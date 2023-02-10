DROP TABLE IF EXISTS erddap."SkeenaFisheriesWaterPropertiesVerticalProfilesResearch";

CREATE TABLE erddap."SkeenaFisheriesWaterPropertiesVerticalProfilesResearch" AS
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
    AND ctd.ctd_post_qc_data.organization = 'SFC'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;
