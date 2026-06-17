------------------------------------------------------------------------------------------------------------
-- Ahousaht First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_AhousahtFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_AhousahtFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('MOYEHA')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Cowichan Tribes
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_CowichanTribes";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_CowichanTribes" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('COWICHAN')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Da’naxda’xw Awaetlala Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Da’naxda’xwAwaetlalaNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Da’naxda’xwAwaetlalaNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('GLENDALE')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Council of the Haida Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_CounciloftheHaidaNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_CounciloftheHaidaNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('NADEN','KUMDIS')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Halalt First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_HalaltFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_HalaltFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('CHEMAINUS')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Heiltsuk  Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_HeiltsukNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_HeiltsukNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('KOEYE')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- K'ómoks First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_K'ómoksFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_K'ómoksFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('SALMON')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Kwakiutl First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_KwakiutlFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_KwakiutlFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('CLUXEWE','QUATSE')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Ka:'yu:'k't'h'/Che:k'tles7et'h'FirstNations";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Ka:'yu:'k't'h'/Che:k'tles7et'h'FirstNations" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('KAOUK','MALKSOPE')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Mamalilikulla First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_MamalilikullaFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_MamalilikullaFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('HOEYA')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Mowachaht-Muchalaht First Nations / Salmon Parks Stewardship Society
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Mowachaht-MuchalahtFirstNations/SalmonParksStewardshipSociety";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Mowachaht-MuchalahtFirstNations/SalmonParksStewardshipSociety" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('CONUMA')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Nuxalk First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_NuxalkFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_NuxalkFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('BELLA COOLA','ASSEEK')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Qualicum First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_QualicumFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_QualicumFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('LITTLE QUALICUM')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Snaw-Naw-As First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Snaw-Naw-AsFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_Snaw-Naw-AsFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('ENGLISHMAN')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Snuneymuxw First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_SnuneymuxwFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_SnuneymuxwFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('NANAIMO')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_TlowitsisFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesResearch_TlowitsisFirstNation" AS
SELECT *
FROM
    ctd.ctd_file_cast_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
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
    AND ctd.ctd_file_cast_data.survey in ('FULMORE','SHOAL')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

