CREATE OR REPLACE VIEW erddap."HakaiWatershedsStreamStations" AS
WITH
last_updated_ssn626us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn626us_5minute
    GROUP BY measurement_time
),
sn_ssn626us AS (
    SELECT
        'SSN626US' AS station,
        'H08KC0626' AS station_id,
        'Hakai Institute - Calvert Island Watershed 626' AS station_description,
        51.64081 AS latitude,
        -128.12065 AS longitude,
        8 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        turbidity_ql::numeric AS turbidity_ql,
        turbidity_qc::character varying AS turbidity_qc,
        turbidity_uql::numeric AS turbidity_uql,
        turbidity_med,
        turbidity_avg,
        turbidity_ntu_ql::numeric AS turbidity_ntu_ql,
        turbidity_ntu_qc::character varying AS turbidity_ntu_qc,
        turbidity_ntu_uql::numeric AS turbidity_ntu_uql,
        turbidity_ntu_med,
        turbidity_ntu_avg
    FROM sn.ssn626us_5minute
),
last_updated_ssn693us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn693us_5minute
    GROUP BY measurement_time
),
sn_ssn693us AS (
    SELECT
        'SSN693US' AS station,
        'H08KC0693' AS station_id,
        'Hakai Institute - Calvert Island Watershed 693' AS station_description,
        51.645 AS latitude,
        -127.9977778 AS longitude,
        51 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        NULL::numeric AS turbidity_ql,
        NULL::character varying AS turbidity_qc,
        NULL::numeric AS turbidity_uql,
        NULL::numeric AS turbidity_med,
        NULL::numeric AS turbidity_avg,
        NULL::numeric AS turbidity_ntu_ql,
        NULL::character varying AS turbidity_ntu_qc,
        NULL::numeric AS turbidity_ntu_uql,
        NULL::numeric AS turbidity_ntu_med,
        NULL::numeric AS turbidity_ntu_avg
    FROM sn.ssn693us_5minute
),
last_updated_ssn703us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn703us_5minute
    GROUP BY measurement_time
),
sn_ssn703us AS (
    SELECT
        'SSN703US' AS station,
        'H08KC0703' AS station_id,
        'Hakai Institute - Calvert Island Watershed 703' AS station_description,
        51.64333333 AS latitude,
        -128.0227778 AS longitude,
        42 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        turbidity_ql::numeric AS turbidity_ql,
        turbidity_qc::character varying AS turbidity_qc,
        turbidity_uql::numeric AS turbidity_uql,
        turbidity_med,
        turbidity_avg,
        turbidity_ntu_ql::numeric AS turbidity_ntu_ql,
        turbidity_ntu_qc::character varying AS turbidity_ntu_qc,
        turbidity_ntu_uql::numeric AS turbidity_ntu_uql,
        turbidity_ntu_med,
        turbidity_ntu_avg
    FROM sn.ssn703us_5minute
),
last_updated_ssn708 AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn708_5minute
    GROUP BY measurement_time
),
sn_ssn708 AS (
    SELECT
        'SSN708' AS station,
        'H08KC0708' AS station_id,
        'Hakai Institute - Calvert Island Watershed 708' AS station_description,
        51.648561 AS latitude,
        -128.06835 AS longitude,
        12 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        turbidity_ql::numeric AS turbidity_ql,
        turbidity_qc::character varying AS turbidity_qc,
        turbidity_uql::numeric AS turbidity_uql,
        turbidity_med,
        turbidity_avg,
        turbidity_ntu_ql::numeric AS turbidity_ntu_ql,
        turbidity_ntu_qc::character varying AS turbidity_ntu_qc,
        turbidity_ntu_uql::numeric AS turbidity_ntu_uql,
        turbidity_ntu_med,
        turbidity_ntu_avg
    FROM sn.ssn708_5minute
),
last_updated_ssn844us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn844us_5minute
    GROUP BY measurement_time
),
sn_ssn844us AS (
    SELECT
        'SSN844US' AS station,
        'H08KC0844' AS station_id,
        'Hakai Institute - Hecate Island Watershed 844' AS station_description,
        51.66083333 AS latitude,
        -128.0025 AS longitude,
        35 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        turbidity_ql::numeric AS turbidity_ql,
        turbidity_qc::character varying AS turbidity_qc,
        turbidity_uql::numeric AS turbidity_uql,
        turbidity_med,
        turbidity_avg,
        turbidity_ntu_ql::numeric AS turbidity_ntu_ql,
        turbidity_ntu_qc::character varying AS turbidity_ntu_qc,
        turbidity_ntu_uql::numeric AS turbidity_ntu_uql,
        turbidity_ntu_med,
        turbidity_ntu_avg
    FROM sn.ssn844us_5minute
),
last_updated_ssn819us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn819us_5minute
    GROUP BY measurement_time
),
sn_ssn819us AS (
    SELECT
        'SSN819US' AS station,
        'H08KC0819' AS station_id,
        'Hakai Institute - Hecate Island Watershed 819' AS station_description,
        51.66222222 AS latitude,
        -128.0419444 AS longitude,
        79 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        turbidity_ql::numeric AS turbidity_ql,
        turbidity_qc::character varying AS turbidity_qc,
        turbidity_uql::numeric AS turbidity_uql,
        turbidity_med,
        turbidity_avg,
        turbidity_ntu_ql::numeric AS turbidity_ntu_ql,
        turbidity_ntu_qc::character varying AS turbidity_ntu_qc,
        turbidity_ntu_uql::numeric AS turbidity_ntu_uql,
        turbidity_ntu_med,
        turbidity_ntu_avg
    FROM sn.ssn819us_5minute
),
last_updated_ssn1015us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'PLS_Lvl' THEN recorded_time END) AS last_updated_lvl_time,
        MAX(recorded_time) AS last_updated_time
    FROM sn_qc.ssn1015us_5minute
    GROUP BY measurement_time
),
sn_ssn1015us AS (
    SELECT
        'SSN1015US' AS station,
        'H08KC1015' AS station_id,
        'Hakai Institute - Hecate Island Watershed 1015' AS station_description,
        51.69055556 AS latitude,
        -128.0652778 AS longitude,
        17 AS elevation,
        measurement_time,
        record,
        pls_lvl_ql,
        pls_lvl_qc,
        pls_lvl_uql,
        pls_lvl,
        pls_lvl_avg,
        pls_lvl_min,
        pls_lvl_max,
        pls_lvl_std,
        pls_temp_ql,
        pls_temp_qc,
        pls_temp_uql,
        pls_temp,
        pls_temp_avg,
        pls_temp_min,
        pls_temp_max,
        pls_temp_std,
        discharge_rate_ql,
        discharge_rate_qc,
        discharge_rate_uql,
        discharge_rate,
        discharge_rate_min,
        discharge_rate_max,
        discharge_volume_ql,
        discharge_volume_qc,
        discharge_volume_uql,
        discharge_volume,
        discharge_volume_min,
        discharge_volume_max,
        turbidity_ql::numeric AS turbidity_ql,
        turbidity_qc::character varying AS turbidity_qc,
        turbidity_uql::numeric AS turbidity_uql,
        turbidity_med,
        turbidity_avg,
        turbidity_ntu_ql::numeric AS turbidity_ntu_ql,
        turbidity_ntu_qc::character varying AS turbidity_ntu_qc,
        turbidity_ntu_uql::numeric AS turbidity_ntu_uql,
        turbidity_ntu_med,
        turbidity_ntu_avg
    FROM sn.ssn1015us_5minute
)


-- Main query with simple UNION ALL
SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn626us sn
LEFT JOIN last_updated_ssn626us lut ON sn.measurement_time = lut.measurement_time

UNION ALL

SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn693us sn
LEFT JOIN last_updated_ssn693us lut ON sn.measurement_time = lut.measurement_time

UNION ALL

SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn703us sn
LEFT JOIN last_updated_ssn703us lut ON sn.measurement_time = lut.measurement_time

UNION ALL

SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn708 sn
LEFT JOIN last_updated_ssn708 lut ON sn.measurement_time = lut.measurement_time

UNION ALL

SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn844us sn
LEFT JOIN last_updated_ssn844us lut ON sn.measurement_time = lut.measurement_time

UNION ALL

SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn819us sn
LEFT JOIN last_updated_ssn819us lut ON sn.measurement_time = lut.measurement_time

UNION ALL

SELECT
    sn.station,
    sn.station_id,
    sn.station_description,
    sn.latitude,
    sn.longitude,
    sn.elevation,
    sn.measurement_time,
    COALESCE(lut.last_updated_time, sn.measurement_time) AS last_updated_time,
    COALESCE(lut.last_updated_lvl_time, sn.measurement_time) AS last_updated_lvl_time,
    CASE
        WHEN COALESCE(lut.last_updated_lvl_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_lvl_status,
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    sn.record,
    sn.pls_lvl_ql,
    sn.pls_lvl_qc,
    sn.pls_lvl_uql,
    sn.pls_lvl,
    sn.pls_lvl_avg,
    sn.pls_lvl_min,
    sn.pls_lvl_max,
    sn.pls_lvl_std,
    sn.pls_temp_ql,
    sn.pls_temp_qc,
    sn.pls_temp_uql,
    sn.pls_temp,
    sn.pls_temp_avg,
    sn.pls_temp_min,
    sn.pls_temp_max,
    sn.pls_temp_std,
    sn.discharge_rate_ql,
    sn.discharge_rate_qc,
    sn.discharge_rate_uql,
    sn.discharge_rate,
    sn.discharge_rate_min,
    sn.discharge_rate_max,
    sn.discharge_volume_ql,
    sn.discharge_volume_qc,
    sn.discharge_volume_uql,
    sn.discharge_volume,
    sn.discharge_volume_min,
    sn.discharge_volume_max,
    sn.turbidity_ql,
    sn.turbidity_qc,
    sn.turbidity_uql,
    sn.turbidity_med,
    sn.turbidity_avg,
    sn.turbidity_ntu_ql,
    sn.turbidity_ntu_qc,
    sn.turbidity_ntu_uql,
    sn.turbidity_ntu_med,
    sn.turbidity_ntu_avg
FROM sn_ssn1015us sn
LEFT JOIN last_updated_ssn1015us lut ON sn.measurement_time = lut.measurement_time

;

CREATE OR REPLACE VIEW erddap."HakaiWatershedsStreamStationsResearch" AS
SELECT
    station,
    station_id,
    station_description,
    latitude,
    longitude,
    elevation,
    measurement_time,
    last_updated_time,
    last_updated_lvl_time,
    last_updated_status,
    last_updated_lvl_status
    record,
    pls_lvl_ql,
    pls_lvl_qc,
    pls_lvl_uql,
    pls_temp_ql,
    pls_temp_qc,
    pls_temp_uql,
    discharge_rate_ql,
    discharge_rate_qc,
    discharge_rate_uql,
    discharge_volume_ql,
    discharge_volume_qc,
    discharge_volume_uql,
    turbidity_ql,
    turbidity_qc,
    turbidity_uql,
    turbidity_ntu_ql,
    turbidity_ntu_qc,
    turbidity_ntu_uql,
    CASE
        WHEN (pls_lvl_uql = 4 OR pls_lvl_ql < 2) THEN NULL
        ELSE pls_lvl
    END AS pls_lvl,
    CASE
        WHEN (pls_lvl_uql = 4 OR pls_lvl_ql < 2) THEN NULL
        ELSE pls_lvl_avg
    END AS pls_lvl_avg,
    CASE
        WHEN (pls_lvl_uql = 4 OR pls_lvl_ql < 2) THEN NULL
        ELSE pls_lvl_min
    END AS pls_lvl_min,
    CASE
        WHEN (pls_lvl_uql = 4 OR pls_lvl_ql < 2) THEN NULL
        ELSE pls_lvl_max
    END AS pls_lvl_max,
    CASE
        WHEN (pls_lvl_uql = 4 OR pls_lvl_ql < 2) THEN NULL
        ELSE pls_lvl_std
    END AS pls_lvl_std,
    CASE
        WHEN (pls_temp_uql = 4 OR pls_temp_ql < 2) THEN NULL
        ELSE pls_temp
    END AS pls_temp,
    CASE
        WHEN (pls_temp_uql = 4 OR pls_temp_ql < 2) THEN NULL
        ELSE pls_temp_avg
    END AS pls_temp_avg,
    CASE
        WHEN (pls_temp_uql = 4 OR pls_temp_ql < 2) THEN NULL
        ELSE pls_temp_min
    END AS pls_temp_min,
    CASE
        WHEN (pls_temp_uql = 4 OR pls_temp_ql < 2) THEN NULL
        ELSE pls_temp_max
    END AS pls_temp_max,
    CASE
        WHEN (pls_temp_uql = 4 OR pls_temp_ql < 2) THEN NULL
        ELSE pls_temp_std
    END AS pls_temp_std,
    CASE
        WHEN (discharge_rate_uql = 4 OR discharge_rate_ql < 2) THEN NULL
        ELSE discharge_rate
    END AS discharge_rate,
    CASE
        WHEN (discharge_rate_uql = 4 OR discharge_rate_ql < 2) THEN NULL
        ELSE discharge_rate_min
    END AS discharge_rate_min,
    CASE
        WHEN (discharge_rate_uql = 4 OR discharge_rate_ql < 2) THEN NULL
        ELSE discharge_rate_max
    END AS discharge_rate_max,
    CASE
        WHEN (discharge_volume_uql = 4 OR discharge_volume_ql < 2) THEN NULL
        ELSE discharge_volume
    END AS discharge_volume,
    CASE
        WHEN (discharge_volume_uql = 4 OR discharge_volume_ql < 2) THEN NULL
        ELSE discharge_volume_min
    END AS discharge_volume_min,
    CASE
        WHEN (discharge_volume_uql = 4 OR discharge_volume_ql < 2) THEN NULL
        ELSE discharge_volume_max
    END AS discharge_volume_max,
    CASE
        WHEN (turbidity_uql = 4 OR turbidity_ql < 2) THEN NULL
        ELSE turbidity_med
    END AS turbidity_med,
    CASE
        WHEN (turbidity_uql = 4 OR turbidity_ql < 2) THEN NULL
        ELSE turbidity_avg
    END AS turbidity_avg,
    CASE
        WHEN (turbidity_ntu_uql = 4 OR turbidity_ntu_ql < 2) THEN NULL
        ELSE turbidity_ntu_med
    END AS turbidity_ntu_med,
    CASE
        WHEN (turbidity_ntu_uql = 4 OR turbidity_ntu_ql < 2) THEN NULL
        ELSE turbidity_ntu_avg
    END AS turbidity_ntu_avg
FROM erddap."HakaiWatershedsStreamStations"
WHERE
    pls_lvl_ql = 2
    OR pls_temp_ql = 2
    OR discharge_rate_ql = 2
    OR discharge_volume_ql = 2
    OR turbidity_ql = 2;