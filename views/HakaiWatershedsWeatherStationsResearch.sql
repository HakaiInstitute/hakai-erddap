CREATE
OR REPLACE VIEW erddap."HakaiWatershedsWeatherStationsResearch" AS
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
        WHEN wind_spd_uql = 4 Then null
        else wind_spd_avg
    END as wind_spd_avg,
    CASE
        WHEN wind_spd_uql = 4 Then null
        else wind_spd_std
    END as wind_spd_std,
    wind_dir_ql,
    wind_dir_qc,
    wind_dir_uql,
    CASE
        WHEN wind_dir_uql = 4 Then null
        else wind_dir_avg
    END as wind_dir_avg,
    CASE
        WHEN wind_dir_uql = 4 Then null
        else wind_dir_std
    END as wind_dir_std,
    rh_ql,
    rh_qc,
    rh_uql,
    CASE
        WHEN rh_uql = 4 Then null
        else rh
    END as rh,
    CASE
        WHEN rh_uql = 4 Then null
        else rh_avg
    END as rh_avg,
    CASE
        WHEN rh_uql = 4 Then null
        else rh_std
    END as rh_std,
    air_temp_ql,
    air_temp_qc,
    air_temp_uql,
    CASE
        WHEN air_temp_uql = 4 Then null
        else air_temp
    END as air_temp,
    CASE
        WHEN air_temp_uql = 4 Then null
        else air_temp_avg
    END as air_temp_avg,
    CASE
        WHEN air_temp_uql = 4 Then null
        else air_temp_std
    END as air_temp_std,
    air_temp2_ql,
    air_temp2_qc,
    air_temp2_uql,
    CASE
        WHEN air_temp2_uql = 4 Then null
        else air_temp2
    END as air_temp2,
    CASE
        WHEN air_temp2_uql = 4 Then null
        else air_temp2_avg
    END as air_temp2_avg,
    CASE
        WHEN air_temp2_uql = 4 Then null
        else air_temp2_std
    END as air_temp2_std,
    rain_ql,
    rain_qc,
    rain_uql,
    CASE
        WHEN rain_uql = 4 Then null
        else rain
    END as rain,
    one_hour_rain_ql,
    one_hour_rain_qc,
    one_hour_rain_uql,
    CASE
        WHEN one_hour_rain_uql = 4 Then null
        else one_hour_rain
    END as one_hour_rain,
    snow_depth_ql,
    snow_depth_qc,
    snow_depth_uql,
    CASE
        WHEN snow_depth_uql = 4 Then null
        else snow_depth
    END as snow_depth,
    snow_depth_tc_ql,
    snow_depth_tc_qc,
    snow_depth_tc_uql,
    CASE
        WHEN snow_depth_tc_uql = 4 Then null
        else snow_depth_tc
    END as snow_depth_tc
FROM
    erddap."HakaiWatershedsWeatherStations"
WHERE
    wind_spd_ql = 2
    or wind_dir_ql = 2
    or rh_ql = 2
    or air_temp_ql = 2
    or air_temp2_ql = 2
    or rain_ql = 2
    or one_hour_rain_ql = 2
    or snow_depth_ql = 2
    or snow_depth_tc_ql = 2;