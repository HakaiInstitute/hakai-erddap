DROP TABLE IF EXISTS erddap."HakaiHPLCSampleResearch";

CREATE TABLE erddap."HakaiHPLCSampleResearch" AS
select
    x.*,
    (coalesce(pressure_transducer_depth,line_out_depth)) as depth,
    y.latitude,
    y.longitude,
    y.depth as site_depth
FROM
    eims.output_hplc x
join eims.output_sites y
on x.site_id = y.name and x.work_area = y.work_area
WHERE
    x.organization = 'HAKAI'
    AND x.row_flag = 'Results'
    AND quality_level IN ('Principal Investigator', 'Technicianmr')
    AND x.all_chl_a_flag IN ('AV')
    AND x.analyzing_lab = 'USC'
    -- AND site_id IN ('QU39')
;
