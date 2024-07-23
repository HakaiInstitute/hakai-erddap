-- CREATE
-- OR REPLACE VIEW erddap."HakaiSentinelTemperature" AS
SELECT
    sm.*,
    data.*
FROM
    (
        SELECT *
        FROM
            sn_sa.sentinel_temp_cortes_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_descanso_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_false_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_ford_cove_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_heather_marina_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_heriot_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_hope_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_horseshoe_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_miners_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_psec_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_retreat_cove_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_silva_bay_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.sentinel_temp_whaler_bay_raw
    ) AS data
INNER JOIN sn_sa.system_stations AS sm ON sm.id = data.station_id;
