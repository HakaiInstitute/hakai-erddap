DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional" AS
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
    AND (
        ctd.ctd_file_cast_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_file_cast_data.cast_type::text = 'Static'
            AND ctd.ctd_file_cast_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_file_cast_data.organization = 'NATURE TRUST'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;
