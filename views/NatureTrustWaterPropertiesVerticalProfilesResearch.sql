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

ALTER TABLE IF EXISTS erddap."NTCTDResearchMoyeha" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchMoyeha" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchMoyeha" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchCowichan" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchCowichan" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchCowichan" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchGlendale" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchGlendale" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchGlendale" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchChemainus" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchChemainus" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchChemainus" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchKoeye" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchKoeye" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchKoeye" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchSalmon" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchSalmon" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchSalmon" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchCluxewe" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchCluxewe" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchCluxewe" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchQuatse" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchQuatse" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchQuatse" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchKaouk" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchKaouk" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchKaouk" TO hakai_erddap_admin;
------------------------------------------------------------------------------------------------------------
-- Malksope - Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchMalksope";

CREATE TABLE erddap."NTCTDResearchMalksope" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'MALKSOPE'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

ALTER TABLE IF EXISTS erddap."NTCTDResearchMalksope" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchMalksope" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchMalksope" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchHoeya" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchHoeya" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchHoeya" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchConuma" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchConuma" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchConuma" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchBellaCoola" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchBellaCoola" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchBellaCoola" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchAsseek" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchAsseek" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchAsseek" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchLittleQualicum" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchLittleQualicum" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchLittleQualicum" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchEnglishman" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchEnglishman" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchEnglishman" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDResearchNanaimo" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchNanaimo" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchNanaimo" TO hakai_erddap_admin;
------------------------------------------------------------------------------------------------------------
-- Fulmore-Shoal - Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDResearchFulmoreShoal";

CREATE TABLE erddap."NTCTDResearchFulmoreShoal" AS
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
    AND ctd.ctd_post_qc_data.cruise = 'FULMORE-SHOAL'
ORDER BY
    ctd.ctd_post_qc_data.work_area ASC,
    ctd.ctd_post_qc_data.station ASC,
    ctd.ctd_post_qc_data.start_dt ASC,
    ctd.ctd_post_qc_data.direction_flag ASC,
    ctd.ctd_post_qc_data.pressure ASC;

ALTER TABLE IF EXISTS erddap."NTCTDResearchFulmoreShoal" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchFulmoreShoal" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDResearchFulmoreShoal" TO hakai_erddap_admin;
