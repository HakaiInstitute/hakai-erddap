CREATE
OR REPLACE VIEW erddap."Hakai50WatershedAir" AS
SELECT
    sm.*,
    data.instrument_sn,
    data.measurement_time,
    data.depth,
    data.air_temp,
    data.air_temp_qc,
    data.air_temp_ql,
    data.air_temp_uql
FROM
    (
        SELECT *
        FROM
            sn_sa.w50_mohu_outlet1_tair_raw
        
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_sham_outlet1_tair_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_wick_outlet1_tair_raw
    ) AS data
INNER JOIN sn_sa.system_stations AS sm ON sm.id = data.station_id;
