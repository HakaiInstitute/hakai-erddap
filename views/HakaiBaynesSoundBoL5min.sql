CREATE
OR REPLACE VIEW erddap."HakaiBaynesSoundBoL5min" AS
SELECT
    "measurementTime",
    "BaynesSoundBoL:pCO2_uatm_QL",
    "BaynesSoundBoL:pCO2_uatm_QC",
    "BaynesSoundBoL:pCO2_uatm_UQL",
    "BaynesSoundBoL:pCO2_uatm_Med",
    "BaynesSoundBoL:pCO2_uatm_Avg",
    "BaynesSoundBoL:pCO2_uatm_Min",
    "BaynesSoundBoL:pCO2_uatm_Max",
    "BaynesSoundBoL:pCO2_uatm_Std",
    "BaynesSoundBoL:calcTCO2_QL",
    "BaynesSoundBoL:calcTCO2_QC",
    "BaynesSoundBoL:calcTCO2_UQL",
    "BaynesSoundBoL:calcTCO2_Med",
    "BaynesSoundBoL:calcTCO2_Avg",
    "BaynesSoundBoL:calcTCO2_Min",
    "BaynesSoundBoL:calcTCO2_Max",
    "BaynesSoundBoL:calcTCO2_Std",
    "BaynesSoundBoL:TSG_T_QL",
    "BaynesSoundBoL:TSG_T_QC",
    "BaynesSoundBoL:TSG_T_UQL",
    "BaynesSoundBoL:TSG_T_Med",
    "BaynesSoundBoL:TSG_T_Avg",
    "BaynesSoundBoL:TSG_T_Min",
    "BaynesSoundBoL:TSG_T_Max",
    "BaynesSoundBoL:TSG_T_Std",
    "BaynesSoundBoL:TSG_S_QL",
    "BaynesSoundBoL:TSG_S_QC",
    "BaynesSoundBoL:TSG_S_UQL",
    "BaynesSoundBoL:TSG_S_Med",
    "BaynesSoundBoL:TSG_S_Avg",
    "BaynesSoundBoL:TSG_S_Min",
    "BaynesSoundBoL:TSG_S_Max",
    "BaynesSoundBoL:TSG_S_Std",
    "BaynesSoundBoL:AlkS_QL",
    "BaynesSoundBoL:AlkS_QC",
    "BaynesSoundBoL:AlkS_UQL",
    "BaynesSoundBoL:AlkS_Med",
    "BaynesSoundBoL:AlkS_Avg",
    "BaynesSoundBoL:AlkS_Min",
    "BaynesSoundBoL:AlkS_Max",
    "BaynesSoundBoL:AlkS_Std",
    "BaynesSoundBoL:calcOmega_QL",
    "BaynesSoundBoL:calcOmega_QC",
    "BaynesSoundBoL:calcOmega_UQL",
    "BaynesSoundBoL:calcOmega_Med",
    "BaynesSoundBoL:calcOmega_Avg",
    "BaynesSoundBoL:calcOmega_Min",
    "BaynesSoundBoL:calcOmega_Max",
    "BaynesSoundBoL:calcOmega_Std",
    "BaynesSoundBoL:calcpH_QL",
    "BaynesSoundBoL:calcpH_QC",
    "BaynesSoundBoL:calcpH_UQL",
    "BaynesSoundBoL:calcpH_Med",
    "BaynesSoundBoL:calcpH_Avg",
    "BaynesSoundBoL:calcpH_Min",
    "BaynesSoundBoL:calcpH_Max",
    "BaynesSoundBoL:calcpH_Std",
    "BaynesSoundBoL:calcOmegaCalcite_QL",
    "BaynesSoundBoL:calcOmegaCalcite_QC",
    "BaynesSoundBoL:calcOmegaCalcite_UQL",
    "BaynesSoundBoL:calcOmegaCalcite_Med",
    "BaynesSoundBoL:calcOmegaCalcite_Avg",
    "BaynesSoundBoL:calcOmegaCalcite_Min",
    "BaynesSoundBoL:calcOmegaCalcite_Max",
    "BaynesSoundBoL:calcOmegaCalcite_Std"
FROM
    sn."BaynesSoundBoL:5minuteSamples"
WHERE
    "measurementTime" > (NOW() - '60 days' :: INTERVAL)
ORDER BY
    "measurementTime" DESC;