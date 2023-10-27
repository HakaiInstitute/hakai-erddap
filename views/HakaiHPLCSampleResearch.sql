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
    and x.row_flag = 'Results'
    -- AND quality_level IN ('Principal Investigator', 'Technicianmr')
    -- AND site_id IN ('QU39')
;
