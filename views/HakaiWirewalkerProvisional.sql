CREATE
OR REPLACE VIEW erddap."HakaiWirewalkerProvisional" AS (
    SELECT
        pk,
        measurement_dt,
        conductivity,
        temperature,
        pressure,
        dissolved_oxygen_ml_l,
        serial_number,
        cast_id,
        temperature_1,
        backscatter_counts,
        chlorophyll_counts,
        cdom_counts
    FROM
        ctd.raw_ww_data
    WHERE
        cast_id IS NOT NULL
);
