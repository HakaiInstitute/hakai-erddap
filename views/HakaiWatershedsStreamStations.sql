CREATE OR REPLACE VIEW erddap."HakaiWatershedsStreamStations" AS
WITH
last_updated_ssn626us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'Stage' THEN recorded_time END) AS last_updated_stage_time,
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
        stage_ql,
        stage_qc,
        stage_uql,
        stage_avg as stage,
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
last_updated_ssn844us AS (
    SELECT
        measurement_time,
        MAX(CASE WHEN measurement_name = 'Stage' THEN recorded_time END) AS last_updated_stage_time,
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
        stage_ql,
        stage_qc,
        stage_uql,
        stage_avg as stage,
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
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    COALESCE(lut.last_updated_stage_time, sn.measurement_time) AS last_updated_stage_time,
    CASE
        WHEN COALESCE(lut.last_updated_stage_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_stage_status,
    sn.record,
    sn.stage_ql,
    sn.stage_qc,
    sn.stage_uql,
    sn.stage,
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
    CASE
        WHEN COALESCE(lut.last_updated_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_status,
    COALESCE(lut.last_updated_stage_time, sn.measurement_time) AS last_updated_stage_time,
    CASE
        WHEN COALESCE(lut.last_updated_stage_time, sn.measurement_time) > sn.measurement_time THEN 'updated'
        ELSE 'raw'
    END AS last_updated_stage_status,
    sn.record,
    sn.stage_ql,
    sn.stage_qc,
    sn.stage_uql,
    sn.stage,
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
    last_updated_stage_time,
    last_updated_status,
    last_updated_stage_status
    record,
    stage_ql,
    stage_qc,
    stage_uql,
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
        WHEN (stage_uql = 4 OR stage_ql < 2) THEN NULL
        ELSE stage
    END AS stage,
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
    stage_ql = 2
    OR pls_temp_ql = 2
    OR discharge_rate_ql = 2
    OR discharge_volume_ql = 2
    OR turbidity_ql = 2;