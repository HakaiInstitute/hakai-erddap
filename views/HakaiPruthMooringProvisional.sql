CREATE
OR REPLACE VIEW erddap."HakaiPruthMooringProvisional" AS (
    SELECT
        depth,
        measurement_time AS "measurementTime",
        water_temp_ql AS watertemp_ql,
        water_temp_qc AS watertemp_qc,
        water_temp_uql AS watertemp_uql,
        water_temp_med AS watertemp_med,
        water_temp_avg AS watertemp_avg,
        water_temp_min AS watertemp_min,
        water_temp_max AS watertemp_max
    FROM
        (
            SELECT
                0 AS depth,
                sn.pruth_mooring_0m_5minute.*
            FROM
                sn.pruth_mooring_0m_5minute
            UNION
            ALL
            SELECT
                2 AS depth,
                sn.pruth_mooring_2m_5minute.*
            FROM
                sn.pruth_mooring_2m_5minute
            UNION
            ALL
            SELECT
                5 AS depth,
                sn.pruth_mooring_5m_5minute.*
            FROM
                sn.pruth_mooring_5m_5minute
            UNION
            ALL
            SELECT
                7.5 AS depth,
                sn.pruth_mooring_7_5m_5minute.*
            FROM
                sn.pruth_mooring_7_5m_5minute
            UNION
            ALL
            SELECT
                10 AS depth,
                sn.pruth_mooring_10m_5minute.*
            FROM
                sn.pruth_mooring_10m_5minute
            UNION
            ALL
            SELECT
                15 AS depth,
                sn.pruth_mooring_15m_5minute.*
            FROM
                sn.pruth_mooring_15m_5minute
            UNION
            ALL
            SELECT
                20 AS depth,
                sn.pruth_mooring_20m_5minute.*
            FROM
                sn.pruth_mooring_20m_5minute
            UNION
            ALL
            SELECT
                25 AS depth,
                sn.pruth_mooring_25m_5minute.*
            FROM
                sn.pruth_mooring_25m_5minute
            UNION
            ALL
            SELECT
                30 AS depth,
                sn.pruth_mooring_30m_5minute.*
            FROM
                sn.pruth_mooring_30m_5minute
            UNION
            ALL
            SELECT
                40 AS depth,
                sn.pruth_mooring_10m_5minute.*
            FROM
                sn.pruth_mooring_10m_5minute
            UNION
            ALL
            SELECT
                50 AS depth,
                sn.pruth_mooring_50m_5minute.*
            FROM
                sn.pruth_mooring_50m_5minute
            UNION
            ALL
            SELECT
                60 AS depth,
                sn.pruth_mooring_60m_5minute.*
            FROM
                sn.pruth_mooring_60m_5minute
        ) AS water
);
