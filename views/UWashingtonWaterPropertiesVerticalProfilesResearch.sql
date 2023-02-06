DROP TABLE IF EXISTS erddap."UWashingtonWaterPropertiesVerticalProfilesResearch";

CREATE TABLE erddap."UWashingtonWaterPropertiesVerticalProfilesResearch" AS
SELECT
    *
FROM
    ctd.ctd_post_qc_data d
WHERE
    (
        d.cast_processing_stage >= '10_qc_pi' :: ctd.processing_stage
    )
    AND d.status IS NULL
    AND d.measurement_dt IS NOT NULL
    AND d.direction_flag :: text = 'd' :: text
    AND d.organization = 'UWT'
ORDER BY
    d.work_area,
    d.station,
    d.start_dt,
    d.direction_flag,
    d.pressure DESC;