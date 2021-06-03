DROP TABLE IF EXISTS erddap."HakaiChlorophyllSampleResearch";
CREATE TABLE IF NOT EXISTS erddap."HakaiChlorophyllSampleResearch" AS
SELECT "work_area",
    "organization",
    "survey",
    "site_id",
    "lat",
    "long",
    "gather_lat",
    "gather_long",
    "line_out_depth",
    "pressure_transducer_depth",
    "collected",
    -- phaeo
    -- There are a few cases where records have multiple nil
    (array_remove(array_agg(phaeo_20um), Null)) [1]::NUMERIC phaeo_20um,
    (array_remove(array_agg(phaeo_3um), Null)) [1]::NUMERIC phaeo_3um,
    (array_remove(array_agg(phaeo_2um), Null)) [1]::NUMERIC phaeo_2um,
    (array_remove(array_agg(phaeo_gf_f), Null)) [1]::NUMERIC phaeo_gf_f,
    (array_remove(array_agg(phaeo_bulk_gf_f), Null)) [1]::NUMERIC phaeo_bulk_gf_f,
    -- chla
    (array_remove(array_agg(chla_20um), Null)) [1]::NUMERIC chla_20um,
    (array_remove(array_agg(chla_3um), Null)) [1]::NUMERIC chla_3um,
    (array_remove(array_agg(chla_2um), Null)) [1]::NUMERIC chla_2um,
    (array_remove(array_agg(chla_gf_f), Null)) [1]::NUMERIC chla_gf_f,
    (array_remove(array_agg(chla_bulk_gf_f), Null)) [1]::NUMERIC chla_bulk_gf_f
FROM (
        select *,
            (
                CASE 
                    WHEN pressure_transducer_depth IS NULL THEN line_out_depth
                    ELSE pressure_transducer_depth
                END
            ) depth,
            -- phaeo
            (
                CASE
                    WHEN filter_type = '20um' THEN phaeo
                END
            ) phaeo_20um,
            (
                CASE
                    WHEN filter_type = '3um' THEN phaeo
                END
            ) phaeo_3um,
            (
                CASE
                    WHEN filter_type = '2um' THEN phaeo
                END
            ) phaeo_2um,
            (
                CASE
                    WHEN filter_type = 'GF/F' THEN phaeo
                END
            
            ) phaeo_gf_f,
            (
                CASE
                    WHEN filter_type = 'Bulk GF/F' THEN phaeo
                END
            ) phaeo_bulk_gf_f,
            -- chla
            (
                CASE
                    WHEN filter_type = '20um' THEN chla
                END
            ) chla_20um,
            (
                CASE
                    WHEN filter_type = '3um' THEN chla
                END
            ) chla_3um,
            (
                CASE
                    WHEN filter_type = '2um' THEN chla
                END
            ) chla_2um,
            (
                CASE
                    WHEN filter_type = 'GF/F' THEN chla
                END
            ) chla_gf_f,
            (
                CASE
                    WHEN filter_type = 'Bulk GF/F' THEN chla
                END
            ) chla_bulk_gf_f
        FROM eims.output_chlorophyll
        WHERE collected > '2018-05-04'
            AND quality_level in ('Principal Investigator', 'Technicianmr')
            and (
                chla_flag in ('AV')
                AND phaeo_flag in ('AV')
            )
    ) subquery
group by (
        "work_area",
        "organization",
        "survey",
        "site_id",
        "lat",
        "long",
        "gather_lat",
        "gather_long",
        "line_out_depth",
        "pressure_transducer_depth",
        "collected"
    );