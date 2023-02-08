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
            or pls_lvl_ql < 2
        ) Then null
        else pls_lvl
    END as pls_lvl,
    CASE
        WHEN (
            pls_lvl_uql = 4
            or pls_lvl_ql < 2
        ) Then null
        else pls_lvl_avg
    END as pls_lvl_avg,
    CASE
        WHEN (
            pls_lvl_uql = 4
            or pls_lvl_ql < 2
        ) Then null
        else pls_lvl_min
    END as pls_lvl_min,
    CASE
        WHEN (
            pls_lvl_uql = 4
            or pls_lvl_ql < 2
        ) Then null
        else pls_lvl_max
    END as pls_lvl_max,
    CASE
        WHEN (
            pls_lvl_uql = 4
            or pls_lvl_ql < 2
        ) Then null
        else pls_lvl_std
    END as pls_lvl_std,
    pls_temp_ql,
    pls_temp_qc,
    pls_temp_uql,
    CASE
        WHEN (
            pls_temp_uql = 4
            or pls_temp_ql < 2
        ) Then null
        else pls_temp
    END as pls_temp,
    CASE
        WHEN (
            pls_temp_uql = 4
            or pls_temp_ql < 2
        ) Then null
        else pls_temp_avg
    END as pls_temp_avg,
    CASE
        WHEN (
            pls_temp_uql = 4
            or pls_temp_ql < 2
        ) Then null
        else pls_temp_min
    END as pls_temp_min,
    CASE
        WHEN (
            pls_temp_uql = 4
            or pls_temp_ql < 2
        ) Then null
        else pls_temp_max
    END as pls_temp_max,
    CASE
        WHEN (
            pls_temp_uql = 4
            or pls_temp_ql < 2
        ) Then null
        else pls_temp_std
    END as pls_temp_std,
    discharge_rate_ql,
    discharge_rate_qc,
    discharge_rate_uql,
    CASE
        WHEN (
            discharge_rate_uql = 4
            or discharge_rate_ql < 2
        ) Then null
        else discharge_rate
    END as discharge_rate,
    CASE
        WHEN (
            discharge_rate_uql = 4
            or discharge_rate_ql < 2
        ) Then null
        else discharge_rate_min
    END as discharge_rate_min,
    CASE
        WHEN (
            discharge_rate_uql = 4
            or discharge_rate_ql < 2
        ) Then null
        else discharge_rate_max
    END as discharge_rate_max,
    discharge_volume_ql,
    discharge_volume_qc,
    discharge_volume_uql,
    CASE
        WHEN (
            discharge_volume_uql = 4
            or discharge_volume_ql < 2
        ) Then null
        else discharge_volume
    END as discharge_volume,
    CASE
        WHEN (
            discharge_volume_uql = 4
            or discharge_volume_ql < 2
        ) Then null
        else discharge_volume_min
    END as discharge_volume_min,
    CASE
        WHEN (
            discharge_volume_uql = 4
            or discharge_volume_ql < 2
        ) Then null
        else discharge_volume_max
    END as discharge_volume_max,
    turbidity_ql,
    turbidity_qc,
    turbidity_uql,
    CASE
        WHEN (
            turbidity_uql = 4
            or turbidity_ql < 2
        ) Then null
        else turbidity_med
    END as turbidity_med,
    CASE
        WHEN (
            turbidity_uql = 4
            or turbidity_ql < 2
        ) Then null
        else turbidity_avg
    END as turbidity_avg,
    turbidity_ntu_ql,
    turbidity_ntu_qc,
    turbidity_ntu_uql,
    CASE
        WHEN (
            turbidity_ntu_uql = 4
            or turbidity_ntu_ql < 2
        ) Then null
        else turbidity_ntu_med
    END as turbidity_ntu_med,
    CASE
        WHEN (
            turbidity_ntu_uql = 4
            or turbidity_ntu_ql < 2
        ) Then null
        else turbidity_ntu_avg
    END as turbidity_ntu_avg
FROM
    erddap."HakaiWatershedsStreamStations"
WHERE
    pls_lvl_ql = 2
    or pls_temp_ql = 2
    or discharge_rate_ql = 2
    or discharge_volume_ql = 2
    or turbidity_ql = 2;