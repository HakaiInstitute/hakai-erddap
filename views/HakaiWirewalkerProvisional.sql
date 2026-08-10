-- Wirewalker processed profiles, from the binned/QC'd ctd_data record. Every measurement
-- carries its native cast (ctd_cast_pk) and calibrated values, so no cast reconstruction or
-- unit conversion is needed. Wirewalker data is upcast-only, so there is no direction
-- filter.
DROP VIEW IF EXISTS erddap."HakaiWirewalkerProvisional";
CREATE VIEW erddap."HakaiWirewalkerProvisional" AS (
    SELECT
        d.pk,
        d.measurement_dt,
        d.conductivity,
        d.temperature,
        d.pressure,
        d.depth,
        d.salinity,
        d.dissolved_oxygen_ml_l,
        f.device_sn::bigint AS serial_number,
        d.ctd_cast_pk AS cast_id,
        d.backscatter_beta,
        d.flc,
        d.cdom_ppb
    FROM
        ctd.ctd_data d
        JOIN ctd.ctd_file f ON f.pk = d.ctd_file_pk AND f.is_wirewalker IS TRUE
);
