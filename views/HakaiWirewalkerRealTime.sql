-- Wirewalker real-time raw data from two sources, split at a single point in time: the
-- complete, full-resolution record offloaded from the instrument's rsk file
-- (ctd.raw_ctd_data), authoritative up to its latest timestamp, and the radio-transmitted
-- tail (ctd.raw_ww_data) beyond it. Both are raw and full-resolution, so they are
-- comparable across the boundary.
--
-- cast_id is deliberately NOT reconstructed for the offloaded rows (it is null there);
-- radio rows keep their native cast_id. Consumers needing cast-grouped, processed profiles
-- use the HakaiWirewalkerProvisional dataset (backed by ctd_data) instead. Because there is
-- no cast assignment, this is a plain, cheap view.
--
-- dissolved_o2 is converted from umol/L to mL/L (/ 44.661) on the offloaded side to match
-- the radio feed's units. cdom_counts and temperature_1 are absent from raw_ctd_data, so
-- they are null on offloaded rows.
--
-- The cutoff is per instrument (serial_number), not global: each instrument's radio feed is
-- kept only beyond that instrument's own latest offloaded timestamp. A global cutoff would
-- discard radio data from an instrument still transmitting whenever a different instrument
-- had been offloaded to a later date. An instrument with no offloaded record yet has no
-- cutoff row, so all of its radio data is kept.
CREATE
OR REPLACE VIEW erddap."HakaiWirewalkerRealTime" AS (
    WITH cutoff AS (
        SELECT
            f.device_sn::bigint AS serial_number,
            max(r.measurement_dt) AS max_dt
        FROM ctd.raw_ctd_data r
        JOIN ctd.ctd_file f ON f.pk = r.ctd_file_pk
        WHERE f.is_wirewalker IS TRUE
        GROUP BY 1
    )
    -- Offloaded, full-resolution data (everything up to the cutoff). No cast assignment.
    SELECT
        r.pk,
        r.measurement_dt,
        r.conductivity,
        r.temperature,
        r.pressure,
        r.dissolved_oxygen_umol_l / 44.661 AS dissolved_oxygen_ml_l,
        f.device_sn::bigint AS serial_number,
        NULL::bigint AS cast_id,
        NULL::numeric AS temperature_1,
        r.backscatter_counts,
        r.flc_counts AS chlorophyll_counts,
        NULL::numeric AS cdom_counts
    FROM
        ctd.raw_ctd_data r
        JOIN ctd.ctd_file f ON f.pk = r.ctd_file_pk AND f.is_wirewalker IS TRUE
    UNION ALL
    -- Radio-transmitted tail beyond the offloaded record, with its native cast_id.
    SELECT
        w.pk,
        w.measurement_dt,
        w.conductivity,
        w.temperature,
        w.pressure,
        w.dissolved_oxygen_ml_l,
        w.serial_number,
        w.cast_id,
        w.temperature_1,
        w.backscatter_counts,
        w.chlorophyll_counts,
        w.cdom_counts
    FROM
        ctd.raw_ww_data w
        LEFT JOIN cutoff c ON c.serial_number = w.serial_number
    WHERE
        w.cast_id IS NOT NULL
        AND (c.max_dt IS NULL OR w.measurement_dt > c.max_dt)
);
