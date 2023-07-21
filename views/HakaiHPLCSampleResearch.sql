DROP TABLE IF EXISTS erddap."HakaiHPLCSampleResearch";

CREATE TABLE erddap."HakaiHPLCSampleResearch" AS
SELECT
    *
FROM
    eims.output_hplc
WHERE
    organization = 'HAKAI'
    and row_flag = 'Results'
    -- AND quality_level IN ('Principal Investigator', 'Technicianmr')
    -- AND site_id IN ('QU39')
ORDER BY
    "collected" DESC, "line_out_depth" ASC;
