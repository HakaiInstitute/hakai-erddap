CREATE
OR REPLACE VIEW erddap."HakaiPruthMooringProvisional" AS (
	SELECT
		depth,
		measurement_time AS "measurementTime",
		water_temp_ql as watertemp_ql,
		water_temp_qc AS watertemp_qc,
		water_temp_uql AS watertemp_uql,
		water_temp_med AS watertemp_med,
		water_temp_avg AS watertemp_avg,
		water_temp_min AS watertemp_min,
		water_temp_max AS watertemp_max
	FROM
		(
			SELECT
				0 AS depth,
				d0.*
			FROM
				sn.pruth_mooring_0m_5minute d0
			UNION
			ALL
			SELECT
				2 AS depth,
				d2.*
			FROM
				sn.pruth_mooring_2m_5minute d2
			UNION
			ALL
			SELECT
				5 AS depth,
				d5.*
			FROM
				sn.pruth_mooring_5m_5minute d5
			UNION
			ALL
			SELECT
				7.5 AS depth,
				d7.*
			FROM
				sn.pruth_mooring_7_5m_5minute d7
			UNION
			ALL
			SELECT
				10 AS depth,
				d10.*
			FROM
				sn.pruth_mooring_10m_5minute d10
			UNION
			ALL
			SELECT
				15 AS depth,
				d15.*
			FROM
				sn.pruth_mooring_15m_5minute d15
			UNION
			ALL
			SELECT
				20 AS depth,
				d20.*
			FROM
				sn.pruth_mooring_20m_5minute d20
			UNION
			ALL
			SELECT
				25 AS depth,
				d25.*
			FROM
				sn.pruth_mooring_25m_5minute d25
			UNION
			ALL
			SELECT
				30 AS depth,
				d30.*
			FROM
				sn.pruth_mooring_30m_5minute d30
			UNION
			ALL
			SELECT
				40 AS depth,
				d40.*
			FROM
				sn.pruth_mooring_10m_5minute d40
			UNION
			ALL
			SELECT
				50 AS depth,
				d50.*
			FROM
				sn.pruth_mooring_50m_5minute d50
			UNION
			ALL
			SELECT
				60 AS depth,
				d60.*
			FROM
				sn.pruth_mooring_60m_5minute d60
		) water
);