DROP VIEW erddap."HakaiQU5MMooringProvisional"
CREATE OR REPLACE VIEW erddap."HakaiQU5MMooringProvisional" AS (
	SELECT 
		COALESCE(water.depth, air.depth) as depth,
		COALESCE(water.measurement_time, air.measurement_time) as measurement_time,
		water.water_temp_ql as watertemp_ql,
		water.water_temp_qc AS watertemp_qc,
		water.water_temp_uql AS watertemp_uql,
		water.water_temp_med AS watertemp_med,
		water.water_temp_avg AS watertemp_avg,
		water.water_temp_min AS watertemp_min,
		water.water_temp_max AS watertemp_max,
		water.water_temp_std AS watertemp_std,
		air.air_temp_ql AS airtemp_ql,
		air.air_temp_qc AS airtemp_qc,
		air.air_temp_uql AS airtemp_uql,
		air.air_temp_med AS airtemp_med,
		air.air_temp_avg AS airtemp_avg,
		air.air_temp_min AS airtemp_min,
		air.air_temp_max AS airtemp_max,
		air.air_temp_std AS airtemp_std
	FROM (
	SELECT 0.3 AS depth,d0.* FROM sn.qu5_mooring_0_3m_5minute d0
	UNION ALL SELECT 2  AS depth,d2.* FROM sn.qu5_mooring_2m_5minute d2
	UNION ALL SELECT 5  AS depth,d5.* FROM sn.qu5_mooring_5m_5minute d5
	UNION ALL SELECT 7.5  AS depth,d7.* FROM sn.qu5_mooring_7_5m_5minute d7
	UNION ALL SELECT 10  AS depth,d10.* FROM sn.qu5_mooring_10m_5minute d10    
	UNION ALL SELECT 15  AS depth,d15.* FROM sn.qu5_mooring_15m_5minute d15
	UNION ALL SELECT 20  AS depth,d20.* FROM sn.qu5_mooring_20m_5minute d20
	UNION ALL SELECT 25  AS depth,d25.* FROM sn.qu5_mooring_25m_5minute d25
	UNION ALL SELECT 30  AS depth,d30.* FROM sn.qu5_mooring_30m_5minute d30
	UNION ALL SELECT 40  AS depth,d40.* FROM sn.qu5_mooring_10m_5minute d40
	UNION ALL SELECT 50  AS depth,d50.* FROM sn.qu5_mooring_50m_5minute d50
	UNION ALL SELECT 60  AS depth,d60.* FROM sn.qu5_mooring_60m_5minute d60) water 
	FULL OUTER JOIN
 	(SELECT -0.5  AS depth,measurement_time,air_temp_ql,air_temp_qc,air_temp_uql,air_temp_med,air_temp_avg,air_temp_min,air_temp_max,air_temp_std FROM sn.qu5_mooring_air_5minute air) air 
 	ON water.DEPTH=air.DEPTH AND water.measurement_time=air.measurement_time
 );