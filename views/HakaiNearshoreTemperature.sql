CREATE
OR REPLACE VIEW erddap."HakaiNearshoreTemperature" AS
SELECT
    sm.*,
    data.instrument_sn,
    data.measurement_time,
    data.depth,
    data.water_temp,
    data.water_temp_qc,
    data.water_temp_ql,
    data.water_temp_uql,
    data.light_intensity,
    data.light_intensity_qc,
    data.light_intensity_ql,
    data.light_intensity_uql
FROM
    (
        SELECT *
        FROM
            sn_sa.ns_koeye_mouth_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_kwakshua_mouth_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_koeye_mouth_mg_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_kwakume_fish_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_little_wolf_pyropia_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_little_wolf_pyropia_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_little_wolf_pyropia_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_louisa_otter_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_manley_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mcmullin_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_martin_sand_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mcmullin_north_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mcmullin_reef_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mcnaughton_otter_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mcmullin_south_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_meay_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_meay_seaweed_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_meay_seaweed_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mercury_reef_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_moulds_bay_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_moulds_bay_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_moulds_bay_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_mustang_fish_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_nalau_fish_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_nalau_otter_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_nalau_pyropia_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_nalau_pyropia_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_nalau_pyropia_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_nelson_narrows_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_namu_fish_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_north_beach_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_north_beach_mussel_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_north_beach_surfgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_north_beach_rocky_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_piles_beach_sand_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_pruth_bay01_drift_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_pruth_bay01_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_pruth_bay02_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_pruthbay01_mg_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_pruth_pocket_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_quadra_fucus_north_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_rattenbury_arms_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_rattenbury_nereo_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_rivers_mouth_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_second_beach_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_sagen_islnd_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_shellaligan_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_shellaligan_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_simmonds_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_shellaligan_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_starfish_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_spider_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_annex_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_addenbroke_fish_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_annex_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_athabaskin_reef_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_breaker_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_stirling_otter_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_annex_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_bone_otter_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_burke_doc_marker_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_choked_inner_sgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_choked_flat_sgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_thrasher_reef_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_choked_sandspit_sgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_triquet_bay02_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_choked_sandspit_sgrass_mg_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_stryker_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_triquet_bay01_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_0_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_02_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_05_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_10_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_01_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_triquet_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_02_line2_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_05_line2_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_dawson_15_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_ethel_island_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_foggy_cove_pyropia_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_fifth_seaweed_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_fifth_beach_rocky_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_foggy_cove_pyropia_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_fifth_beach_mussel_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_fifth_seaweed_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_triquet_reef_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_fish_egg_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_foggy_cove_pyropia_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_foggy_seaweed_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_triquet_north_sgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_foggy_seaweed_low_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_ward_otter_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_west_beach_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_triquetta_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_goose_se_sgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_kelpie_reef_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_koeye_mid02_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_foggy_seaweed_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_golden_kelp_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_west_beach_high_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_goose_sw_sgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_kildidt_fish_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_koeye_mid02_mg_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_west_beach_mussel_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_west_beach_surfgrass_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_koeye_mid_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_west_beach_rocky_raw
        UNION
        ALL
        SELECT *
        FROM
            sn_sa.ns_wolf_beach_fish_raw
    ) AS data
INNER JOIN sn_sa.system_stations AS sm ON sm.id = data.station_id;