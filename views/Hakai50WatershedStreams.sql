CREATE
OR REPLACE VIEW erddap."Hakai50WatershedStream" AS
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
            sn_sa.w50_adam_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_outlet1_t2_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_mohu_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_naka_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib13_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib14_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib15_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib16_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib17_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib2_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib3_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib4_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib5_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_adam_trib6_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_naka_outlet1_t2_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_outlet1_t2_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_sham_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_tsit_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_wick_outlet1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib10_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib11_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib2_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib3_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib4_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib5_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib6_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib7_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib8_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_salm_trib9_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_tsit_trib2_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_tsit_trib1_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_tsit_trib3_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_tsit_trib5_t1_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.w50_tsit_trib6_t1_raw
    ) AS data
INNER JOIN sn_sa.system_stations AS sm ON sm.id = data.station_id;