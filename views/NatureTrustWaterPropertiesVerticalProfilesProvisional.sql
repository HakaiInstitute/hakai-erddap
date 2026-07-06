------------------------------------------------------------------------------------------------------------
-- Moyeha - Ahousaht First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalMoyeha";

CREATE TABLE erddap."NTCTDProvisionalMoyeha" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'MOYEHA'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Cowichan - Cowichan Tribes
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalCowichan";

CREATE TABLE erddap."NTCTDProvisionalCowichan" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'COWICHAN'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Glendale - Da'naxda'xw Awaetlala Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalGlendale";

CREATE TABLE erddap."NTCTDProvisionalGlendale" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'GLENDALE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Chemainus - Halalt First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalChemainus";

CREATE TABLE erddap."NTCTDProvisionalChemainus" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'CHEMAINUS'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Koeye - Heiltsuk  Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalKoeye";

CREATE TABLE erddap."NTCTDProvisionalKoeye" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'KOEYE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Salmon - K'ómoks First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalSalmon";

CREATE TABLE erddap."NTCTDProvisionalSalmon" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'SALMON'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Cluxewe - Kwakiutl First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalCluxewe";

CREATE TABLE erddap."NTCTDProvisionalCluxewe" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'CLUXEWE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Quatse - Kwakiutl First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalQuatse";

CREATE TABLE erddap."NTCTDProvisionalQuatse" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'QUATSE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Kaouk - Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalKaouk";

CREATE TABLE erddap."NTCTDProvisionalKaouk" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'KAOUK'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- KaoukMalksope - Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalKaoukMalksope";

CREATE TABLE erddap."NTCTDProvisionalKaoukMalksope" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'KAOUKMALKSOPE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Hoeya - Mamalilikulla First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalHoeya";

CREATE TABLE erddap."NTCTDProvisionalHoeya" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'HOEYA'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Conuma - Mowachaht-Muchalaht First Nations / Salmon Parks Stewardship Society
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalConuma";

CREATE TABLE erddap."NTCTDProvisionalConuma" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'CONUMA'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Bella Coola - Nuxalk First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalBellaCoola";

CREATE TABLE erddap."NTCTDProvisionalBellaCoola" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'BELLA COOLA'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Asseek - Nuxalk First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalAsseek";

CREATE TABLE erddap."NTCTDProvisionalAsseek" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'ASSEEK'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Little Qualicum - Qualicum First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalLittleQualicum";

CREATE TABLE erddap."NTCTDProvisionalLittleQualicum" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'LITTLE QUALICUM'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Englishman - Snaw-Naw-As First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalEnglishman";

CREATE TABLE erddap."NTCTDProvisionalEnglishman" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'ENGLISHMAN'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Nanaimo - Snuneymuxw First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalNanaimo";

CREATE TABLE erddap."NTCTDProvisionalNanaimo" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'NANAIMO'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Fulmore - Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalFulmore";

CREATE TABLE erddap."NTCTDProvisionalFulmore" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'FULMORE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

------------------------------------------------------------------------------------------------------------
-- Shoal - Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalShoal";

CREATE TABLE erddap."NTCTDProvisionalShoal" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'SHOAL'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

