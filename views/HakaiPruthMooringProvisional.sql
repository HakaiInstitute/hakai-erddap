-- DROP VIEW erddap."HakaiPruthMooringProvisional"
CREATE OR REPLACE VIEW erddap."HakaiPruthMooringProvisional" AS (
        SELECT t."measurementTime",
            m.*
        FROM sn."PruthMooring:5minuteSamples" t
            CROSS JOIN LATERAL (
                VALUES (
                        0,
                        "PruthMooring:WaterTemp_0m_QL",
                        "PruthMooring:WaterTemp_0m_QC",
                        "PruthMooring:WaterTemp_0m_UQL",
                        "PruthMooring:WaterTemp_0m_Med",
                        "PruthMooring:WaterTemp_0m_Avg",
                        "PruthMooring:WaterTemp_0m_Min",
                        "PruthMooring:WaterTemp_0m_Max",
                        "PruthMooring:WaterTemp_0m_Std"
                    ),
                    (
                        10,
                        "PruthMooring:WaterTemp_10m_QL",
                        "PruthMooring:WaterTemp_10m_QC",
                        "PruthMooring:WaterTemp_10m_UQL",
                        "PruthMooring:WaterTemp_10m_Med",
                        "PruthMooring:WaterTemp_10m_Avg",
                        "PruthMooring:WaterTemp_10m_Min",
                        "PruthMooring:WaterTemp_10m_Max",
                        "PruthMooring:WaterTemp_10m_Std"
                    ),
                    (
                        15,
                        "PruthMooring:WaterTemp_15m_QL",
                        "PruthMooring:WaterTemp_15m_QC",
                        "PruthMooring:WaterTemp_15m_UQL",
                        "PruthMooring:WaterTemp_15m_Med",
                        "PruthMooring:WaterTemp_15m_Avg",
                        "PruthMooring:WaterTemp_15m_Min",
                        "PruthMooring:WaterTemp_15m_Max",
                        "PruthMooring:WaterTemp_15m_Std"
                    )
            ) AS m(
                depth,
                watertemp_ql,
                watertemp_qc,
                watertemp_uql,
                watertemp_med,
                watertemp_avg,
                watertemp_min,
                watertemp_max,
                watertemp_std
            )
    );