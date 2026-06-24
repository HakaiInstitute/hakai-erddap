------------------------------------------------------------------------------------------------------------
-- Ahousaht First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchAhousahtFirstNation";

CREATE TABLE erddap."NTCTDResearchAhousahtFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('MOYEHA')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Cowichan Tribes
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchCowichanTribes";

CREATE TABLE erddap."NTCTDResearchCowichanTribes" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('COWICHAN')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Da'naxda'xw Awaetlala Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchDanaxdaxwAwaetlalaNation";

CREATE TABLE erddap."NTCTDResearchDanaxdaxwAwaetlalaNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('GLENDALE')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Council of the Haida Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchCounciloftheHaidaNation";

CREATE TABLE erddap."NTCTDResearchCounciloftheHaidaNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('NADEN','KUMDIS')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Halalt First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchHalaltFirstNation";

CREATE TABLE erddap."NTCTDResearchHalaltFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('CHEMAINUS')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Heiltsuk  Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchHeiltsukNation";

CREATE TABLE erddap."NTCTDResearchHeiltsukNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('KOEYE')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- K'ómoks First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchKmoksFirstNation";

CREATE TABLE erddap."NTCTDResearchKmoksFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('SALMON')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Kwakiutl First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchKwakiutlFirstNation";

CREATE TABLE erddap."NTCTDResearchKwakiutlFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('CLUXEWE','QUATSE')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchKayukthChektles7ethFirstNations";

CREATE TABLE erddap."NTCTDResearchKayukthChektles7ethFirstNations" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('KAOUK','MALKSOPE')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Mamalilikulla First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchMamalilikullaFirstNation";

CREATE TABLE erddap."NTCTDResearchMamalilikullaFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('HOEYA')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Mowachaht-Muchalaht First Nations / Salmon Parks Stewardship Society
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchMowachahtMuchalahtFirstNationsSalmonParksStewardsh";

CREATE TABLE erddap."NTCTDResearchMowachahtMuchalahtFirstNationsSalmonParksStewardsh" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('CONUMA')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Nuxalk First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchNuxalkFirstNation";

CREATE TABLE erddap."NTCTDResearchNuxalkFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('BELLA COOLA','ASSEEK')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Qualicum First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchQualicumFirstNation";

CREATE TABLE erddap."NTCTDResearchQualicumFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('LITTLE QUALICUM')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Snaw-Naw-As First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchSnawNawAsFirstNation";

CREATE TABLE erddap."NTCTDResearchSnawNawAsFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('ENGLISHMAN')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Snuneymuxw First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchSnuneymuxwFirstNation";

CREATE TABLE erddap."NTCTDResearchSnuneymuxwFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('NANAIMO')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchTlowitsisFirstNation";

CREATE TABLE erddap."NTCTDResearchTlowitsisFirstNation" AS
SELECT *
FROM
    ctd.ctd_post_qc_data
WHERE
    (
        ctd.ctd_post_qc_data.cast_processing_stage >= '10_qc_pi'::ctd.processing_stage
    )
    AND ctd.ctd_post_qc_data.status IS NULL
    AND ctd.ctd_post_qc_data.measurement_dt IS NOT NULL
    AND (
        ctd.ctd_post_qc_data.direction_flag::text = 'd'::text
        OR (
            ctd.ctd_post_qc_data.cast_type::text = 'Static'
            AND ctd.ctd_post_qc_data.direction_flag::text = 's'
        )
    )
    AND ctd.ctd_post_qc_data.organization = 'NATURE TRUST'
    AND ctd.ctd_post_qc_data.cruise in ('FULMORE','SHOAL')
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

