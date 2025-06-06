CREATE
OR REPLACE VIEW erddap."HakaiOrfordBuoy1hour" AS
SELECT
    "OrfordBuoy:1hourSamples"."measurementTime",
    "OrfordBuoy:WindSpd_QL",
    "OrfordBuoy:WindSpd_QC",
    "OrfordBuoy:WindSpd_UQL",
    "OrfordBuoy:WindSpd_Avg",
    "OrfordBuoy:WindSpd_Min",
    "OrfordBuoy:WindSpd_Max",
    "OrfordBuoy:WindSpd_Std",
    "OrfordBuoy:WindDir_QL",
    "OrfordBuoy:WindDir_QC",
    "OrfordBuoy:WindDir_UQL",
    "OrfordBuoy:WindDir_Avg",
    "OrfordBuoy:WindDir_Std",
    "OrfordBuoy:AirTemp_QL",
    "OrfordBuoy:AirTemp_QC",
    "OrfordBuoy:AirTemp_UQL",
    "OrfordBuoy:AirTemp",
    "OrfordBuoy:AirTemp_Med",
    "OrfordBuoy:AirTemp_Avg",
    "OrfordBuoy:AirTemp_Min",
    "OrfordBuoy:AirTemp_Max",
    "OrfordBuoy:StationAirPressure_QL",
    "OrfordBuoy:StationAirPressure_QC",
    "OrfordBuoy:StationAirPressure_UQL",
    "OrfordBuoy:StationAirPressure",
    "OrfordBuoy:StationAirPressure_Avg",
    "OrfordBuoy:StationAirPressure_Min",
    "OrfordBuoy:StationAirPressure_Max",
    "OrfordBuoy:StationAirPressure_Std",
    "OrfordBuoy:EnclosureTemp_Avg",
    "OrfordBuoy:EnclosureTemp_Min",
    "OrfordBuoy:EnclosureTemp_Max",
    "OrfordBuoy:PanelTemp_Avg",
    "OrfordBuoy:PanelTemp_Min",
    "OrfordBuoy:PanelTemp_Max",
    "OrfordBuoy:BattVolt_Avg",
    "OrfordBuoy:BattVolt_Min",
    "OrfordBuoy:BattVolt_Max",
    "OrfordBuoy:WaterTemp_QL",
    "OrfordBuoy:WaterTemp_QC",
    "OrfordBuoy:WaterTemp_UQL",
    "OrfordBuoy:WaterTemp",
    "OrfordBuoy:WaterTemp_Med",
    "OrfordBuoy:WaterTemp_Avg",
    "OrfordBuoy:WaterTemp_Min",
    "OrfordBuoy:WaterTemp_Max",
    "OrfordBuoy:WaterConductivity_QL",
    "OrfordBuoy:WaterConductivity_QC",
    "OrfordBuoy:WaterConductivity_UQL",
    "OrfordBuoy:WaterConductivity",
    "OrfordBuoy:WaterConductivity_Med",
    "OrfordBuoy:WaterConductivity_Avg",
    "OrfordBuoy:WaterConductivity_Min",
    "OrfordBuoy:WaterConductivity_Max",
    "OrfordBuoy:WaterPressure_QL",
    "OrfordBuoy:WaterPressure_QC",
    "OrfordBuoy:WaterPressure_UQL",
    "OrfordBuoy:WaterPressure",
    "OrfordBuoy:WaterPressure_Med",
    "OrfordBuoy:WaterPressure_Avg",
    "OrfordBuoy:WaterPressure_Min",
    "OrfordBuoy:WaterPressure_Max",
    "OrfordBuoy:WaterSalinity_QL",
    "OrfordBuoy:WaterSalinity_QC",
    "OrfordBuoy:WaterSalinity_UQL",
    "OrfordBuoy:WaterSalinity",
    "OrfordBuoy:WaterSalinity_Med",
    "OrfordBuoy:WaterSalinity_Avg",
    "OrfordBuoy:WaterSalinity_Min",
    "OrfordBuoy:WaterSalinity_Max",
    "OrfordBuoy:Latitude",
    "OrfordBuoy:Latitude_Med",
    "OrfordBuoy:Latitude_Avg",
    "OrfordBuoy:Latitude_Min",
    "OrfordBuoy:Latitude_Max",
    "OrfordBuoy:Longitude",
    "OrfordBuoy:Longitude_Med",
    "OrfordBuoy:Longitude_Avg",
    "OrfordBuoy:Longitude_Min",
    "OrfordBuoy:Longitude_Max",
    "OrfordBuoy:Pitch",
    "OrfordBuoy:Pitch_Med",
    "OrfordBuoy:Pitch_Avg",
    "OrfordBuoy:Pitch_Min",
    "OrfordBuoy:Pitch_Max",
    "OrfordBuoy:Roll",
    "OrfordBuoy:Roll_Med",
    "OrfordBuoy:Roll_Avg",
    "OrfordBuoy:Roll_Min",
    "OrfordBuoy:Roll_Max",
    "OrfordSeaology:sw_xCO2_QL",
    "OrfordSeaology:sw_xCO2_QC",
    "OrfordSeaology:sw_xCO2_UQL",
    "OrfordSeaology:sw_xCO2",
    "OrfordSeaology:atm_xCO2_QL",
    "OrfordSeaology:atm_xCO2_QC",
    "OrfordSeaology:atm_xCO2_UQL",
    "OrfordSeaology:atm_xCO2",
    "OrfordSeaology:zeroPostCal",
    "OrfordSeaology:spanPostCal",
    "OrfordSeaology:spanPressurePumpOn",
    "OrfordSeaology:spanPressurePumpOff",
    "OrfordSeaology:deltaSpanPressure",
    "OrfordSeaology:deltaZeroPressure",
    "OrfordSeaology:deltaEQPressure",
    "OrfordSeaology:deltaAirPressure",
    "OrfordSeaology:equilPumpOffO2",
    "OrfordSeaology:equilPumpOffRH",
    "OrfordSeaology:airPumpOffO2",
    "OrfordSeaology:airPumpOffRH"
FROM
    sn."OrfordBuoy:1hourSamples" JOIN
    sn."OrfordSeaology:1hourSamples"
    ON sn."OrfordBuoy:1hourSamples"."measurementTime" = sn."OrfordSeaology:1hourSamples"."measurementTime"

WHERE
    "OrfordBuoy:1hourSamples"."measurementTime" > (
        NOW() - '60 days'::INTERVAL
    )
ORDER BY
    "measurementTime" DESC;
