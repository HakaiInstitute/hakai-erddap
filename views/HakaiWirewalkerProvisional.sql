CREATE
OR REPLACE VIEW erddap."HakaiWirewalkerProvisional" AS (
    WITH cutoff AS (
        SELECT
            max(d.measurement_dt) AS max_dt
        FROM
            ctd.ctd_data d
            JOIN ctd.ctd_file f ON f.pk = d.ctd_file_pk
        WHERE
            f.is_wirewalker IS TRUE
    )
    -- Complete, instrument-offloaded data: authoritative up to its latest timestamp.
    -- cast_id is the global ctd_cast_pk.
    SELECT
        d.pk,
        d.measurement_dt,
        d.conductivity,
        d.temperature,
        d.pressure,
        d.dissolved_oxygen_ml_l,
        CASE WHEN f.device_sn ~ '^\d+$' THEN f.device_sn::bigint END AS serial_number,
        d.ctd_cast_pk AS cast_id,
        NULL::numeric AS temperature_1,
        NULL::numeric AS backscatter_counts,
        NULL::numeric AS chlorophyll_counts,
        NULL::numeric AS cdom_counts
    FROM
        ctd.ctd_data d
        JOIN ctd.ctd_file f ON f.pk = d.ctd_file_pk
    WHERE
        f.is_wirewalker IS TRUE

    UNION ALL

    -- Radio-transmitted data: only the recent tail beyond the complete record. The cast
    -- counter resets per deployment, so a profile is identified by the pair
    -- (serial_number, cast_id) rather than cast_id alone.
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
    WHERE
        w.cast_id IS NOT NULL
        AND w.measurement_dt > (SELECT max_dt FROM cutoff)
);
