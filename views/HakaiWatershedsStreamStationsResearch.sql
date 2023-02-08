CREATE
OR REPLACE VIEW erddap."HakaiWatershedsStreamStationsResearch" AS
SELECT
    station,
    latitude,
    longitude,
    elevation,
    measurement_time,
    record,
    pls_lvl_ql,
    pls_lvl_qc,
    pls_lvl_uql,
    CASE
        WHEN (
            pls_lvl_uql = 4
            OR pls_lvl_ql < 2
        ) THEN NULL
        ELSE pls_lvl
    END AS pls_lvl,
    CASE
        WHEN (
            pls_lvl_uql = 4
            OR pls_lvl_ql < 2
        ) THEN NULL
        ELSE pls_lvl_avg
    END AS pls_lvl_avg,
    CASE
        WHEN (
            pls_lvl_uql = 4
            OR pls_lvl_ql < 2
        ) THEN NULL
        ELSE pls_lvl_min
    END AS pls_lvl_min,
    CASE
        WHEN (
            pls_lvl_uql = 4
            OR pls_lvl_ql < 2
        ) THEN NULL
        ELSE pls_lvl_max
    END AS pls_lvl_max,
    CASE
        WHEN (
            pls_lvl_uql = 4
            OR pls_lvl_ql < 2
        ) THEN NULL
        ELSE pls_lvl_std
    END AS pls_lvl_std,
    pls_temp_ql,
    pls_temp_qc,
    pls_temp_uql,
    CASE
        WHEN (
            pls_temp_uql = 4
            OR pls_temp_ql < 2
        ) THEN NULL
        ELSE pls_temp
    END AS pls_temp,
    CASE
        WHEN (
            pls_temp_uql = 4
            OR pls_temp_ql < 2
        ) THEN NULL
        ELSE pls_temp_avg
    END AS pls_temp_avg,
    CASE
        WHEN (
            pls_temp_uql = 4
            OR pls_temp_ql < 2
        ) THEN NULL
        ELSE pls_temp_min
    END AS pls_temp_min,
    CASE
        WHEN (
            pls_temp_uql = 4
            OR pls_temp_ql < 2
        ) THEN NULL
        ELSE pls_temp_max
    END AS pls_temp_max,
    CASE
        WHEN (
            pls_temp_uql = 4
            OR pls_temp_ql < 2
        ) THEN NULL
        ELSE pls_temp_std
    END AS pls_temp_std,
    discharge_rate_ql,
    discharge_rate_qc,
    discharge_rate_uql,
    CASE
        WHEN (
            discharge_rate_uql = 4
            OR discharge_rate_ql < 2
        ) THEN NULL
        ELSE discharge_rate
    END AS discharge_rate,
    CASE
        WHEN (
            discharge_rate_uql = 4
            OR discharge_rate_ql < 2
        ) THEN NULL
        ELSE discharge_rate_min
    END AS discharge_rate_min,
    CASE
        WHEN (
            discharge_rate_uql = 4
            OR discharge_rate_ql < 2
        ) THEN NULL
        ELSE discharge_rate_max
    END AS discharge_rate_max,
    discharge_volume_ql,
    discharge_volume_qc,
    discharge_volume_uql,
    CASE
        WHEN (
            discharge_volume_uql = 4
            OR discharge_volume_ql < 2
        ) THEN NULL
        ELSE discharge_volume
    END AS discharge_volume,
    CASE
        WHEN (
            discharge_volume_uql = 4
            OR discharge_volume_ql < 2
        ) THEN NULL
        ELSE discharge_volume_min
    END AS discharge_volume_min,
    CASE
        WHEN (
            discharge_volume_uql = 4
            OR discharge_volume_ql < 2
        ) THEN NULL
        ELSE discharge_volume_max
    END AS discharge_volume_max,
    turbidity_ql,
    turbidity_qc,
    turbidity_uql,
    CASE
        WHEN (
            turbidity_uql = 4
            OR turbidity_ql < 2
        ) THEN NULL
        ELSE turbidity_med
    END AS turbidity_med,
    CASE
        WHEN (
            turbidity_uql = 4
            OR turbidity_ql < 2
        ) THEN NULL
        ELSE turbidity_avg
    END AS turbidity_avg,
    turbidity_ntu_ql,
    turbidity_ntu_qc,
    turbidity_ntu_uql,
    CASE
        WHEN (
            turbidity_ntu_uql = 4
            OR turbidity_ntu_ql < 2
        ) THEN NULL
        ELSE turbidity_ntu_med
    END AS turbidity_ntu_med,
    CASE
        WHEN (
            turbidity_ntu_uql = 4
            OR turbidity_ntu_ql < 2
        ) THEN NULL
        ELSE turbidity_ntu_avg
    END AS turbidity_ntu_avg
FROM
    erddap."HakaiWatershedsStreamStations"
WHERE
    pls_lvl_ql = 2
    OR pls_temp_ql = 2
    OR discharge_rate_ql = 2
    OR discharge_volume_ql = 2
    OR turbidity_ql = 2;