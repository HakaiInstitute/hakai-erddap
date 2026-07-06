------------------------------------------------------------------------------------------------------------
-- Moyeha - Ahousaht First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchMoyeha";

CREATE TABLE erddap."NTCTDResearchMoyeha" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'MOYEHA'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Cowichan - Cowichan Tribes
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchCowichan";

CREATE TABLE erddap."NTCTDResearchCowichan" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'COWICHAN'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Glendale - Da'naxda'xw Awaetlala Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchGlendale";

CREATE TABLE erddap."NTCTDResearchGlendale" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'GLENDALE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Chemainus - Halalt First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchChemainus";

CREATE TABLE erddap."NTCTDResearchChemainus" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'CHEMAINUS'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Koeye - Heiltsuk  Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchKoeye";

CREATE TABLE erddap."NTCTDResearchKoeye" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'KOEYE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Salmon - K'ómoks First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchSalmon";

CREATE TABLE erddap."NTCTDResearchSalmon" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'SALMON'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Cluxewe - Kwakiutl First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchCluxewe";

CREATE TABLE erddap."NTCTDResearchCluxewe" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'CLUXEWE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Quatse - Kwakiutl First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchQuatse";

CREATE TABLE erddap."NTCTDResearchQuatse" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'QUATSE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Kaouk - Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchKaouk";

CREATE TABLE erddap."NTCTDResearchKaouk" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'KAOUK'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- KaoukMalksope - Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchKaoukMalksope";

CREATE TABLE erddap."NTCTDResearchKaoukMalksope" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'KAOUKMALKSOPE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Hoeya - Mamalilikulla First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchHoeya";

CREATE TABLE erddap."NTCTDResearchHoeya" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'HOEYA'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Conuma - Mowachaht-Muchalaht First Nations / Salmon Parks Stewardship Society
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchConuma";

CREATE TABLE erddap."NTCTDResearchConuma" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'CONUMA'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Bella Coola - Nuxalk First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchBellaCoola";

CREATE TABLE erddap."NTCTDResearchBellaCoola" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'BELLA COOLA'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Asseek - Nuxalk First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchAsseek";

CREATE TABLE erddap."NTCTDResearchAsseek" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'ASSEEK'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Little Qualicum - Qualicum First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchLittleQualicum";

CREATE TABLE erddap."NTCTDResearchLittleQualicum" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'LITTLE QUALICUM'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Englishman - Snaw-Naw-As First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchEnglishman";

CREATE TABLE erddap."NTCTDResearchEnglishman" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'ENGLISHMAN'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Nanaimo - Snuneymuxw First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchNanaimo";

CREATE TABLE erddap."NTCTDResearchNanaimo" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'NANAIMO'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Fulmore - Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchFulmore";

CREATE TABLE erddap."NTCTDResearchFulmore" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'FULMORE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Shoal - Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchShoal";

CREATE TABLE erddap."NTCTDResearchShoal" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'SHOAL'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

