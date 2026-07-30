DROP TABLE IF EXISTS erddap."HakaiWaterPropertiesInstrumentProfileResearch";

CREATE TABLE erddap."HakaiWaterPropertiesInstrumentProfileResearch" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
    AND ctd.ctd_post_qc_data.organization = 'HAKAI'
    AND ctd.ctd_post_qc_data.cruise NOT IN ('CEDAR COAST', 'HER')
    -- Exclude wirewalker data (served by the dedicated HakaiWirewalker datasets). Keyed on
    -- the authoritative is_wirewalker flag rather than relying on the incidental
    -- direction_flag = 'd' filter, which only excludes it because wirewalker is upcast-only.
    AND NOT EXISTS (
        SELECT 1 FROM ctd.ctd_file f
        WHERE f.pk = ctd.ctd_post_qc_data.ctd_file_pk
          AND f.is_wirewalker IS TRUE
    )
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;
