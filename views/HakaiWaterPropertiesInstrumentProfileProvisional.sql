DROP TABLE IF EXISTS erddap."HakaiWaterPropertiesInstrumentProfileProvisional";

CREATE TABLE erddap."HakaiWaterPropertiesInstrumentProfileProvisional" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_file_cast_data.cast_processing_stage >= '8_binAvg'::ctd.processing_stage
        OR ctd.ctd_file_cast_data.cast_processing_stage >= '8_rbr_processed'::ctd.processing_stage
    )
    AND ctd.ctd_file_cast_data.status IS NULL
    AND ctd.ctd_file_cast_data.measurement_dt IS NOT NULL
    AND ctd.ctd_file_cast_data.direction_flag::text = 'd'::text
    AND ctd.ctd_file_cast_data.organization = 'HAKAI'
    AND ctd.ctd_file_cast_data.cruise NOT IN ('CEDAR COAST', 'HER')
    -- Exclude wirewalker data (served by the dedicated HakaiWirewalker datasets). Keyed on
    -- the authoritative is_wirewalker flag rather than relying on the incidental
    -- direction_flag = 'd' filter, which only excludes it because wirewalker is upcast-only.
    AND ctd.ctd_file_cast_data.is_wirewalker IS NOT TRUE
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;
