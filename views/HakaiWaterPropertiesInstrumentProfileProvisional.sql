DROP TABLE IF EXISTS erddap.hakai_ctd_provisional;

CREATE TABLE erddap.hakai_ctd_provisional AS
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
    AND d.work_area in ('CALVERT', 'QUADRA', 'JOHNSTONE STRAIT')
    AND d.cruise NOT IN ('CEDAR COAST', 'HER')
ORDER BY
    "measurementTime" DESC;