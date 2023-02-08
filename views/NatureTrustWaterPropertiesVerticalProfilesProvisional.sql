DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional" AS
SELECT
    *
FROM
    ctd.ctd_file_cast_data d
WHERE
    (
        d.cast_processing_stage >= '8_binAvg' :: ctd.processing_stage
        OR d.cast_processing_stage >= '8_rbr_processed' :: ctd.processing_stage
    )
    AND d.status IS NULL
    AND d.measurement_dt IS NOT NULL
    AND (
        d.direction_flag :: text = 'd' :: text
        OR (
            d.cast_type :: text = 'Static'
            AND d.direction_flag :: text = 's'
        )
    )
    AND d.organization = 'NATURE TRUST'
ORDER BY
    d.work_area,
    d.station,
    d.start_dt,
    d.direction_flag,
    d.pressure DESC;