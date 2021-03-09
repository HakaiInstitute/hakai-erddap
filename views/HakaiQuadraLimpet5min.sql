CREATE OR REPLACE VIEW erddap."HakaiQuadraLimpet5min" AS
SELECT "measurementTime",
    "QuadraLimpet:WaterTemp_QL",
    "QuadraLimpet:WaterTemp_QC",
    "QuadraLimpet:WaterTemp_UQL",
    "QuadraLimpet:WaterTemp_Med",
    "QuadraLimpet:WaterTemp_Avg",
    "QuadraLimpet:WaterTemp_Std",
    "QuadraLimpet:WaterEC_QL",
    "QuadraLimpet:WaterEC_QC",
    "QuadraLimpet:WaterEC_UQL",
    "QuadraLimpet:WaterEC_Med",
    "QuadraLimpet:WaterEC_Avg",
    "QuadraLimpet:WaterEC_Std",
    "QuadraLimpet:WaterPressure_QL",
    "QuadraLimpet:WaterPressure_QC",
    "QuadraLimpet:WaterPressure_UQL",
    "QuadraLimpet:WaterPressure_Med",
    "QuadraLimpet:WaterPressure_Avg",
    "QuadraLimpet:WaterPressure_Std",
    "QuadraLimpet:WaterDepth_QL",
    "QuadraLimpet:WaterDepth_QC",
    "QuadraLimpet:WaterDepth_UQL",
    "QuadraLimpet:WaterDepth_Med",
    "QuadraLimpet:WaterDepth_Avg",
    "QuadraLimpet:WaterOxygen_QL",
    "QuadraLimpet:WaterOxygen_QC",
    "QuadraLimpet:WaterOxygen_UQL",
    "QuadraLimpet:WaterOxygen_Med",
    "QuadraLimpet:WaterOxygen_Avg",
    "QuadraLimpet:WaterOxygen_Std",
    "QuadraLimpet:WaterSalinity_QL",
    "QuadraLimpet:WaterSalinity_QC",
    "QuadraLimpet:WaterSalinity_UQL",
    "QuadraLimpet:WaterSalinity_Med",
    "QuadraLimpet:WaterSalinity_Avg",
    "QuadraLimpet:WaterSalinity_Std",
    "QuadraLimpet:FlrMtr_A1_Med",
    "QuadraLimpet:FlrMtr_A1_Avg",
    "QuadraLimpet:FlrMtr_A1_Std",
    "QuadraLimpet:FlrMtr_WaveLength_Med",
    "QuadraLimpet:FlrMtr_WaveLength_Avg",
    "QuadraLimpet:FlrMtr_WaveLength_Std",
    "QuadraLimpet:FlrMtr_Counts_Med",
    "QuadraLimpet:FlrMtr_Counts_Avg",
    "QuadraLimpet:FlrMtr_Counts_Std",
    "QuadraLimpet:Chlorophyll_QL",
    "QuadraLimpet:Chlorophyll_QC",
    "QuadraLimpet:Chlorophyll_UQL",
    "QuadraLimpet:Chlorophyll_Med",
    "QuadraLimpet:Chlorophyll_Avg",
    "QuadraLimpet:FlrMtr_Therm_Med",
    "QuadraLimpet:FlrMtr_Therm_Avg",
    "QuadraLimpet:FlrMtr_Therm_Std",
    "QuadraLimpet:AccelXAxis_Avg",
    "QuadraLimpet:AccelXAxis_Std",
    "QuadraLimpet:AccelYAxis_Avg",
    "QuadraLimpet:AccelYAxis_Std",
    "QuadraLimpet:AccelZAxis_Avg",
    "QuadraLimpet:AccelZAxis_Std",
    "QuadraLimpet:EnclosureRH_Avg",
    "QuadraLimpet:EnclosureTemp_Avg",
    "QuadraLimpet:PanelTemp_Avg",
    "QuadraLimpet:BattVolt_Avg"
FROM sn."QuadraLimpet:5minuteSamples"
WHERE "measurementTime" > (now() - '60 days'::interval)
ORDER BY "measurementTime" DESC;