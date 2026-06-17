------------------------------------------------------------------------------------------------------------
-- Ahousaht First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_AhousahtFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_AhousahtFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_CowichanTribes";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_CowichanTribes" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Da’naxda’xwAwaetlalaNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Da’naxda’xwAwaetlalaNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_CounciloftheHaidaNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_CounciloftheHaidaNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_HalaltFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_HalaltFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_HeiltsukNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_HeiltsukNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_K'ómoksFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_K'ómoksFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_KwakiutlFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_KwakiutlFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Ka:'yu:'k't'h'/Che:k'tles7et'h'FirstNations";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Ka:'yu:'k't'h'/Che:k'tles7et'h'FirstNations" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_MamalilikullaFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_MamalilikullaFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Mowachaht-MuchalahtFirstNations/SalmonParksStewardshipSociety";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Mowachaht-MuchalahtFirstNations/SalmonParksStewardshipSociety" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_NuxalkFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_NuxalkFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_QualicumFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_QualicumFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Snaw-Naw-AsFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_Snaw-Naw-AsFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_SnuneymuxwFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_SnuneymuxwFirstNation" AS
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
DROP TABLE IF EXISTS erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_TlowitsisFirstNation";

CREATE TABLE erddap."NatureTrustWaterPropertiesVerticalProfilesProvisional_TlowitsisFirstNation" AS
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
    AND ctd.ctd_file_cast_data.survey in ('FULMORE','SHOAL')
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

