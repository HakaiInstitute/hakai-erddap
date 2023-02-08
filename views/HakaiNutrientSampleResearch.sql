DROP TABLE IF EXISTS erddap."HakaiNutrientSampleResearch";

CREATE TABLE erddap."HakaiNutrientSampleResearch" AS
SELECT
    action,
    event_pk,
    rn,
    is_replicate,
    date,
    work_area,
    organization,
    survey,
    sampling_bout,
    site_id,
    project_specific_id,
    hakai_id,
    source,
    lat,
    long,
    gather_lat,
    gather_long,
    collection_method,
    line_out_depth,
    pressure_transducer_depth,
    filtered,
    filter_type,
    volume,
    installed,
    collected,
    preserved,
    analyzed,
    lab_technician,
    nh4_,
    no2_no3_um,
    no2_no3_ugl,
    no2_no3_units,
    tp,
    tdp,
    tn,
    tdn,
    srp,
    po4,
    sio2,
    po4pfilt,
    no3nfilt,
    po4punfl,
    no3nunfl,
    nh4nunfl,
    nh4__flag,
    no2_no3_flag,
    tp_flag,
    tdp_flag,
    tn_flag,
    tdn_flag,
    srp_flag,
    po4_flag,
    sio2_flag,
    po4pfilt_flag,
    no3nfilt_flag,
    po4punfl_flag,
    no3nunfl_flag,
    nh4nunfl_flag,
    analyzing_lab,
    row_flag,
    metadata_qc_flag,
    quality_level,
    comments,
    quality_log,
    (
        COALESCE(pressure_transducer_depth, line_out_depth)
    ) AS depth
FROM
    eims.output_nutrients
WHERE
    organization = 'HAKAI'
    AND quality_level IN ('Principal Investigator', 'Technicianmr')
    AND site_id IN ('QU39')
    AND (
        no2_no3_flag IN ('AV', 'BDL')
        AND po4_flag IN ('AV', 'BDL')
        AND sio2_flag IN ('AV', 'BDL')
    )
ORDER BY
    "collected" DESC;
