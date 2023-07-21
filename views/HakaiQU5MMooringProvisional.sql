CREATE
OR REPLACE VIEW erddap."HakaiQU5MMooringProvisional" AS (
    WITH air AS (
        SELECT
            measurement_time,
            air_temp_ql,
            air_temp_qc,
            air_temp_uql,
            air_temp_med,
            air_temp_avg,
            air_temp_min,
            air_temp_max,
            -0.5 AS depth
        FROM
            sn.qu5_mooring_air_5minute
    )

    SELECT
        water.water_temp_ql AS watertemp_ql,
        water.water_temp_qc AS watertemp_qc,
        water.water_temp_uql AS watertemp_uql,
        water.water_temp_med AS watertemp_med,
        water.water_temp_avg AS watertemp_avg,
        water.water_temp_min AS watertemp_min,
        water.water_temp_max AS watertemp_max,
        air.air_temp_ql AS airtemp_ql,
        air.air_temp_qc AS airtemp_qc,
        air.air_temp_uql AS airtemp_uql,
        air.air_temp_med AS airtemp_med,
        air.air_temp_avg AS airtemp_avg,
        air.air_temp_min AS airtemp_min,
        air.air_temp_max AS airtemp_max,
        COALESCE(water.depth, air.depth) AS depth,
        COALESCE(
            water.measurement_time, air.measurement_time
        ) AS "measurementTime"
    FROM
        (
            SELECT
                0.3 AS depth,
                sn.qu5_mooring_0_3m_5minute.*
            FROM
                sn.qu5_mooring_0_3m_5minute
            UNION
            ALL
            SELECT
                2 AS depth,
                sn.qu5_mooring_2m_5minute.*
            FROM
                sn.qu5_mooring_2m_5minute
            UNION
            ALL
            SELECT
                5 AS depth,
                sn.qu5_mooring_5m_5minute.*
            FROM
                sn.qu5_mooring_5m_5minute
            UNION
            ALL
            SELECT
                7.5 AS depth,
                sn.qu5_mooring_7_5m_5minute.*
            FROM
                sn.qu5_mooring_7_5m_5minute
            UNION
            ALL
            SELECT
                10 AS depth,
                sn.qu5_mooring_10m_5minute.*
            FROM
                sn.qu5_mooring_10m_5minute
            UNION
            ALL
            SELECT
                15 AS depth,
                sn.qu5_mooring_15m_5minute.*
            FROM
                sn.qu5_mooring_15m_5minute
            UNION
            ALL
            SELECT
                20 AS depth,
                sn.qu5_mooring_20m_5minute.*
            FROM
                sn.qu5_mooring_20m_5minute
            UNION
            ALL
            SELECT
                25 AS depth,
                sn.qu5_mooring_25m_5minute.*
            FROM
                sn.qu5_mooring_25m_5minute
            UNION
            ALL
            SELECT
                30 AS depth,
                sn.qu5_mooring_30m_5minute.*
            FROM
                sn.qu5_mooring_30m_5minute
            UNION
            ALL
            SELECT
                40 AS depth,
                sn.qu5_mooring_10m_5minute.*
            FROM
                sn.qu5_mooring_10m_5minute
            UNION
            ALL
            SELECT
                50 AS depth,
                sn.qu5_mooring_50m_5minute.*
            FROM
                sn.qu5_mooring_50m_5minute
            UNION
            ALL
            SELECT
                60 AS depth,
                sn.qu5_mooring_60m_5minute.*
            FROM
                sn.qu5_mooring_60m_5minute
        ) AS water FULL
    OUTER JOIN air ON water.depth = air.depth
            AND water.measurement_time = air.measurement_time
);
