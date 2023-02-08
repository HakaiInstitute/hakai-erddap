DROP TABLE IF EXISTS erddap."HakaiChlorophyllSampleProvisional";

CREATE TABLE erddap."HakaiChlorophyllSampleProvisional" AS
SELECT
    *,
    (
        CASE
            WHEN subquery2.chla_3_20um IS NOT NULL THEN subquery2.chla_gff
        END
    ) AS chla_gff_3um,
    (
        CASE
            WHEN subquery2.chla_2_20um IS NOT NULL THEN subquery2.chla_gff
        END
    ) AS chla_gff_2um,
    (
        CASE
            WHEN subquery2.chla_2_20um IS NOT NULL THEN subquery2.chla_gff_flag
        END
    ) AS chla_gff_2um_flag,
    (
        CASE
            WHEN subquery2.chla_3_20um IS NOT NULL THEN subquery2.chla_gff_flag
        END
    ) AS chla_gff_3um_flag,
    (
        CASE
            WHEN subquery2.phaeo_3_20um IS NOT NULL THEN subquery2.phaeo_gff
        END
    ) AS phaeo_gff_3um,
    (
        CASE
            WHEN subquery2.phaeo_2_20um IS NOT NULL THEN subquery2.phaeo_gff
        END
    ) AS phaeo_gff_2um,
    (
        CASE
            WHEN
                subquery2.phaeo_2_20um IS NOT NULL THEN subquery2.phaeo_gff_flag
        END
    ) AS phaeo_gff_2um_flag,
    (
        CASE
            WHEN
                subquery2.phaeo_3_20um IS NOT NULL THEN subquery2.phaeo_gff_flag
        END
    ) AS phaeo_gff_3um_flag
FROM
    (
        SELECT
            "work_area",
            "organization",
            "survey",
            "site_id",
            "lat",
            "long",
            "gather_lat",
            "gather_long",
            (array_remove(array_agg(depth), NULL)) [1]::NUMERIC AS depth,
            "line_out_depth",
            "pressure_transducer_depth",
            "collected",
            -- phaeo
            -- There are a few cases where records have multiple nil
            (
                array_remove(array_agg(phaeo_20um), NULL)
            ) [1]::NUMERIC AS phaeo_20um,
            (
                array_remove(array_agg(phaeo_3_20um), NULL)
            ) [1]::NUMERIC AS phaeo_3_20um,
            (
                array_remove(array_agg(phaeo_2_20um), NULL)
            ) [1]::NUMERIC AS phaeo_2_20um,
            (
                array_remove(array_agg(phaeo_gff), NULL)
            ) [1]::NUMERIC AS phaeo_gff,
            (
                array_remove(array_agg(phaeo_bulk_gff), NULL)
            ) [1]::NUMERIC AS phaeo_bulk_gff,
            -- chla
            (
                array_remove(array_agg(chla_20um), NULL)
            ) [1]::NUMERIC AS chla_20um,
            (
                array_remove(array_agg(chla_3_20um), NULL)
            ) [1]::NUMERIC AS chla_3_20um,
            (
                array_remove(array_agg(chla_2_20um), NULL)
            ) [1]::NUMERIC AS chla_2_20um,
            (
                array_remove(array_agg(chla_gff), NULL)
            ) [1]::NUMERIC AS chla_gff,
            (
                array_remove(array_agg(chla_bulk_gff), NULL)
            ) [1]::NUMERIC AS chla_bulk_gff,
            -- phaeo_flag
            (
                array_remove(array_agg(phaeo_20um_flag), NULL)
            ) [1]::TEXT AS phaeo_20um_flag,
            (
                array_remove(array_agg(phaeo_3_20um_flag), NULL)
            ) [1]::TEXT AS phaeo_3_20um_flag,
            (
                array_remove(array_agg(phaeo_2_20um_flag), NULL)
            ) [1]::TEXT AS phaeo_2_20um_flag,
            (
                array_remove(array_agg(phaeo_gff_flag), NULL)
            ) [1]::TEXT AS phaeo_gff_flag,
            (
                array_remove(array_agg(phaeo_bulk_gff_flag), NULL)
            ) [1]::TEXT AS phaeo_bulk_gff_flag,
            -- chla
            (
                array_remove(array_agg(chla_20um_flag), NULL)
            ) [1]::TEXT AS chla_20um_flag,
            (
                array_remove(array_agg(chla_3_20um_flag), NULL)
            ) [1]::TEXT AS chla_3_20um_flag,
            (
                array_remove(array_agg(chla_2_20um_flag), NULL)
            ) [1]::TEXT AS chla_2_20um_flag,
            (
                array_remove(array_agg(chla_gff_flag), NULL)
            ) [1]::TEXT AS chla_gff_flag,
            (
                array_remove(array_agg(chla_bulk_gff_flag), NULL)
            ) [1]::TEXT AS chla_bulk_gff_flag
        FROM
            (
                SELECT
                    *,
                    (
                        coalesce(pressure_transducer_depth, line_out_depth)
                    ) AS depth,
                    -- phaeo
                    (
                        CASE
                            WHEN filter_type = '20um' THEN phaeo
                        END
                    ) AS phaeo_20um,
                    (
                        CASE
                            WHEN filter_type = '3um' THEN phaeo
                        END
                    ) AS phaeo_3_20um,
                    (
                        CASE
                            WHEN filter_type = '2um' THEN phaeo
                        END
                    ) AS phaeo_2_20um,
                    (
                        CASE
                            WHEN filter_type = 'GF/F' THEN phaeo
                        END
                    ) AS phaeo_gff,
                    (
                        CASE
                            WHEN filter_type = 'Bulk GF/F' THEN phaeo
                        END
                    ) AS phaeo_bulk_gff,
                    -- phaeo_flag
                    (
                        CASE
                            WHEN filter_type = '20um' THEN phaeo_flag
                        END
                    ) AS phaeo_20um_flag,
                    (
                        CASE
                            WHEN filter_type = '3um' THEN phaeo_flag
                        END
                    ) AS phaeo_3_20um_flag,
                    (
                        CASE
                            WHEN filter_type = '2um' THEN phaeo_flag
                        END
                    ) AS phaeo_2_20um_flag,
                    (
                        CASE
                            WHEN filter_type = 'GF/F' THEN phaeo_flag
                        END
                    ) AS phaeo_gff_flag,
                    (
                        CASE
                            WHEN filter_type = 'Bulk GF/F' THEN phaeo_flag
                        END
                    ) AS phaeo_bulk_gff_flag,
                    -- chla
                    (
                        CASE
                            WHEN filter_type = '20um' THEN chla
                        END
                    ) AS chla_20um,
                    (
                        CASE
                            WHEN filter_type = '3um' THEN chla
                        END
                    ) AS chla_3_20um,
                    (
                        CASE
                            WHEN filter_type = '2um' THEN chla
                        END
                    ) AS chla_2_20um,
                    (
                        CASE
                            WHEN filter_type = 'GF/F' THEN chla
                        END
                    ) AS chla_gff,
                    (
                        CASE
                            WHEN filter_type = 'Bulk GF/F' THEN chla
                        END
                    ) AS chla_bulk_gff,
                    -- chla_flag
                    (
                        CASE
                            WHEN filter_type = '20um' THEN chla_flag
                        END
                    ) AS chla_20um_flag,
                    (
                        CASE
                            WHEN filter_type = '3um' THEN chla_flag
                        END
                    ) AS chla_3_20um_flag,
                    (
                        CASE
                            WHEN filter_type = '2um' THEN chla_flag
                        END
                    ) AS chla_2_20um_flag,
                    (
                        CASE
                            WHEN filter_type = 'GF/F' THEN chla_flag
                        END
                    ) AS chla_gff_flag,
                    (
                        CASE
                            WHEN filter_type = 'Bulk GF/F' THEN chla_flag
                        END
                    ) AS chla_bulk_gff_flag
                FROM
                    eims.output_chlorophyll
                WHERE
                    (
                        (
                            chla IS NOT NULL
                            OR phaeo IS NOT NULL
                        )
                        AND (
                            chla_flag NOT IN ('SVD')
                            AND phaeo_flag NOT IN ('SVD')
                        )
                    )
            ) AS subquery
        GROUP BY
            (
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
            )
    ) AS subquery2;
