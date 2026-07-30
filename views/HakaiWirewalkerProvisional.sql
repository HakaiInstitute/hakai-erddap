-- Wirewalker processed profiles, from the binned/QC'd ctd_data record. Every measurement
-- carries its native cast (ctd_cast_pk) and calibrated values, so no cast reconstruction or
-- unit conversion is needed. Wirewalker data is upcast-only, so there is no direction
-- filter. For raw, full-resolution, up-to-the-minute data use HakaiWirewalkerRealTime.
--
-- Small (~250k rows) with no expensive join, so a plain view is fine.
CREATE
OR REPLACE VIEW erddap."HakaiWirewalkerProvisional" AS (
    SELECT
        d.pk,
        d.measurement_dt,
        d.conductivity,
        d.temperature,
        d.pressure,
        d.depth,
        d.salinity,
        d.dissolved_oxygen_ml_l,
        CASE WHEN f.device_sn ~ '^\d+$' THEN f.device_sn::bigint END AS serial_number,
        d.ctd_cast_pk AS cast_id,
        d.backscatter_beta,
        d.flc,
        d.cdom_ppb
    FROM
        ctd.ctd_data d
        JOIN ctd.ctd_file f ON f.pk = d.ctd_file_pk AND f.is_wirewalker IS TRUE
);
