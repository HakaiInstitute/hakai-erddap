CREATE
OR REPLACE VIEW erddap."HakaiWeatherStationsResearch" AS
SELECT
    station,
    latitude,
    longitude,
    elevation,
    measurement_time,
    record,
    wind_spd_ql,
    wind_spd_qc,
    wind_spd_uql,
    CASE
        WHEN (
            wind_spd_uql = 4
            OR wind_dir_ql < 2
        ) THEN NULL
        ELSE wind_spd_avg
    END AS wind_spd_avg,
    CASE
        WHEN (
            wind_spd_uql = 4
            OR wind_dir_ql < 2
        ) THEN NULL
        ELSE wind_spd_std
    END AS wind_spd_std,
    wind_dir_ql,
    wind_dir_qc,
    wind_dir_uql,
    CASE
        WHEN (
            wind_dir_uql = 4
            OR wind_dir_ql < 2
        ) THEN NULL
        ELSE wind_dir_avg
    END AS wind_dir_avg,
    CASE
        WHEN (
            wind_dir_uql = 4
            OR wind_dir_ql < 2
        ) THEN NULL
        ELSE wind_dir_std
    END AS wind_dir_std,
    rh_ql,
    rh_qc,
    rh_uql,
    CASE
        WHEN (
            rh_uql = 4
            OR rh_ql < 2
        ) THEN NULL
        ELSE rh
    END AS rh,
    CASE
        WHEN (
            rh_uql = 4
            OR rh_ql < 2
        ) THEN NULL
        ELSE rh_avg
    END AS rh_avg,
    CASE
        WHEN (
            rh_uql = 4
            OR rh_ql < 2
        ) THEN NULL
        ELSE rh_std
    END AS rh_std,
    air_temp_ql,
    air_temp_qc,
    air_temp_uql,
    CASE
        WHEN (
            air_temp_uql = 4
            OR air_temp_ql < 2
        ) THEN NULL
        ELSE air_temp
    END AS air_temp,
    CASE
        WHEN (
            air_temp_uql = 4
            OR air_temp_ql < 2
        ) THEN NULL
        ELSE air_temp_avg
    END AS air_temp_avg,
    CASE
        WHEN (
            air_temp_uql = 4
            OR air_temp_ql < 2
        ) THEN NULL
        ELSE air_temp_std
    END AS air_temp_std,
    air_temp2_ql,
    air_temp2_qc,
    air_temp2_uql,
    CASE
        WHEN (
            air_temp_uql = 4
            OR air_temp_ql < 2
        ) THEN NULL
        ELSE air_temp2
    END AS air_temp2,
    CASE
        WHEN (
            air_temp_uql = 4
            OR air_temp_ql < 2
        ) THEN NULL
        ELSE air_temp2_avg
    END AS air_temp2_avg,
    CASE
        WHEN (
            air_temp_uql = 4
            OR air_temp_ql < 2
        ) THEN NULL
        ELSE air_temp2_std
    END AS air_temp2_std,
    rain_ql,
    rain_qc,
    rain_uql,
    CASE
        WHEN (
            rain_uql = 4
            OR rain_ql < 2
        ) THEN NULL
        ELSE rain
    END AS rain,
    one_hour_rain_ql,
    one_hour_rain_qc,
    one_hour_rain_uql,
    CASE
        WHEN (
            one_hour_rain_uql = 4
            OR one_hour_rain_ql < 2
        ) THEN NULL
        ELSE one_hour_rain
    END AS one_hour_rain,
    snow_depth_ql,
    snow_depth_qc,
    snow_depth_uql,
    CASE
        WHEN (
            snow_depth_uql = 4
            OR snow_depth_ql < 2
        ) THEN NULL
        ELSE snow_depth
    END AS snow_depth,
    snow_depth_tc_ql,
    snow_depth_tc_qc,
    snow_depth_tc_uql,
    CASE
        WHEN (
            snow_depth_tc_uql = 4
            OR snow_depth_tc_ql < 2
        ) THEN NULL
        ELSE snow_depth_tc
    END AS snow_depth_tc
FROM
    erddap."HakaiWeatherStations"
WHERE
    wind_spd_ql >= 2
    OR wind_dir_ql >= 2
    OR rh_ql >= 2
    OR air_temp_ql >= 2
    OR air_temp2_ql >= 2
    OR rain_ql >= 2
    OR one_hour_rain_ql >= 2
    OR snow_depth_ql >= 2
    OR snow_depth_tc_ql >= 2;