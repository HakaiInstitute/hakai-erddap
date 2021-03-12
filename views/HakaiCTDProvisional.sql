CREATE OR REPLACE VIEW erddap."HakaiCTDProvisional" AS
SELECT d.measurement_dt AS "measurementTime",
    d.ctd_cast_pk,
    d.ctd_data_pk,
    d.filename,
    d.device_model,
    d.device_sn,
    d.device_firmware,
    d.work_area,
    d.cast_processing_stage,
    d.cruise,
    d.station,
    d.cast_number,
    d.status,
    d.latitude,
    d.longitude,
    d.start_dt,
    d.bottom_dt,
    d.end_dt,
    d.duration,
    d.start_depth,
    d.bottom_depth,
    d.target_depth,
    d.drop_speed,
    d.vessel,
    d.operators,
    d.cast_comments,
    d.direction_flag,
    d.descent_rate,
    d.conductivity,
    d.conductivity_flag::text AS conductivity_flags,
    eims.quartod_level(d.conductivity) AS "conductivity_UQL",
    d.temperature,
    d.temperature_flag::text AS temperature_flags,
    eims.quartod_level(d.temperature) AS "temperature_UQL",
    d.depth,
    d.depth_flag::text AS depth_flags,
    eims.quartod_level(d.depth) AS "depth_UQL",
    d.pressure,
    d.pressure_flag::text AS pressure_flags,
    eims.quartod_level(d.pressure) AS "pressure_UQL",
    d.par,
    d.par_flag::text AS par_flags,
    eims.quartod_level(d.par) AS "par_UQL",
    d.flc,
    d.flc_flag::text AS flc_flags,
    eims.quartod_level(d.flc) AS "flc_UQL",
    d.turbidity,
    d.turbidity_flag::text AS turbidity_flags,
    eims.quartod_level(d.turbidity) AS "turbidity_UQL",
    d.salinity,
    d.salinity_flag::text AS salinity_flags,
    eims.quartod_level(d.salinity) AS "salinity_UQL",
    d.dissolved_oxygen_ml_l,
    d.dissolved_oxygen_ml_l_flag::text AS dissolved_oxygen_ml_l_flags,
    eims.quartod_level(d.dissolved_oxygen_ml_l) AS "dissolved_oxygen_ml_l_UQL",
    d.c_star_at,
    d.c_star_at_flag::text AS c_star_at_flags,
    eims.quartod_level(d.c_star_at) AS "c_star_at_UQL",
    d.rinko_do_ml_l,
    d.rinko_do_ml_l_flag::text AS rinko_do_ml_l_flags,
    eims.quartod_level(d.rinko_do_ml_l) AS "rinko_do_ml_l_UQL"
FROM ctd.ctd_file_cast_data d
WHERE (
        d.cast_processing_stage >= '8_binAvg'::ctd.processing_stage
        OR d.cast_processing_stage >= '8_rbr_processed'::ctd.processing_stage
    )
    AND d.status IS NULL
    AND d.measurement_dt IS NOT NULL
    AND d.direction_flag::text = 'd'::text
    AND work_area in ('CALVERT', 'QUADRA', 'JOHNSTONE STRAIT')
    AND d.cruise NOT IN ('CEDAR COAST', 'HER')
ORDER BY "measurementTime" DESC;

