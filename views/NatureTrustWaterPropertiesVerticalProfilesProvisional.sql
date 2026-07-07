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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalMoyeha" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalMoyeha" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalMoyeha" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalCowichan" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalCowichan" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalCowichan" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalGlendale" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalGlendale" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalGlendale" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalChemainus" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalChemainus" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalChemainus" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalKoeye" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalKoeye" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalKoeye" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalSalmon" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalSalmon" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalSalmon" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalCluxewe" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalCluxewe" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalCluxewe" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalQuatse" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalQuatse" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalQuatse" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalKaouk" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalKaouk" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalKaouk" TO hakai_erddap_admin;
------------------------------------------------------------------------------------------------------------
-- Malksope - Ka:'yu:'k't'h'/Che:k'tles7et'h' First Nations
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalMalksope";

CREATE TABLE erddap."NTCTDProvisionalMalksope" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'MALKSOPE'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalMalksope" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalMalksope" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalMalksope" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalHoeya" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalHoeya" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalHoeya" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalConuma" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalConuma" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalConuma" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalBellaCoola" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalBellaCoola" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalBellaCoola" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalAsseek" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalAsseek" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalAsseek" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalLittleQualicum" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalLittleQualicum" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalLittleQualicum" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalEnglishman" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalEnglishman" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalEnglishman" TO hakai_erddap_admin;
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

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalNanaimo" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalNanaimo" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalNanaimo" TO hakai_erddap_admin;
------------------------------------------------------------------------------------------------------------
-- Fulmore-Shoal - Tlowitsis First Nation
------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS erddap."NTCTDProvisionalFulmoreShoal";

CREATE TABLE erddap."NTCTDProvisionalFulmoreShoal" AS
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
    AND ctd.ctd_file_cast_data.cruise = 'FULMORE-SHOAL'
ORDER BY
    ctd.ctd_file_cast_data.work_area ASC,
    ctd.ctd_file_cast_data.station ASC,
    ctd.ctd_file_cast_data.start_dt ASC,
    ctd.ctd_file_cast_data.direction_flag ASC,
    ctd.ctd_file_cast_data.pressure ASC;

ALTER TABLE IF EXISTS erddap."NTCTDProvisionalFulmoreShoal" OWNER to hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalFulmoreShoal" TO hakai_admin;
GRANT ALL ON TABLE erddap."NTCTDProvisionalFulmoreShoal" TO hakai_erddap_admin;
