CREATE
OR REPLACE VIEW erddap."HakaiSentinelTemperature" AS
SELECT
    sm.*,
    data.instrument_sn,
    data.measurement_time,
    data.depth,
    data.water_temp,
    data.water_temp_qc,
    data.water_temp_ql,
    data.water_temp_uql
FROM
    (
        SELECT *
        FROM
            sn_sa.sentinel_cortes_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_cowichan_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_descanso_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_false_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_ford_cove_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_heather_marina_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_heriot_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_hope_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_horseshoe_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_miners_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_pbs_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_psec_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_retreat_cove_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_silva_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_whaler_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_winter_cove_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_bamfield_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_campbell_river_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_denman_island_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_indian_arm_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_james_island_pier_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_pender_harbour_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_sooke_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_surge_narrows_raw
    ) AS data
INNER JOIN sn_sa.system_stations AS sm ON sm.id = data.station_id;