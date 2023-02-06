DROP TABLE IF EXISTS erddap."ParksCanadaWaterPropertiesInstrumentProfileResearch";

CREATE TABLE erddap."ParksCanadaWaterPropertiesInstrumentProfileResearch" AS
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
    AND d.organization = 'PARKS CANADA'
ORDER BY
    d.work_area,
    d.station,
    d.start_dt,
    d.direction_flag,
    d.pressure DESC;