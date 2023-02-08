DROP TABLE IF EXISTS erddap."HakaiWaterPropertiesInstrumentProfileProvisional";

CREATE TABLE erddap."HakaiWaterPropertiesInstrumentProfileProvisional" AS
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
    AND d.direction_flag :: text = 'd' :: text
    AND d.organization = 'HAKAI'
    AND d.cruise NOT IN ('CEDAR COAST', 'HER')
ORDER BY
    d.work_area,
    d.station,
    d.start_dt,
    d.direction_flag,
    d.pressure DESC;