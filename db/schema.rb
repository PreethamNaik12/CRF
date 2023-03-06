# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_04_041231) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "advance_molecular_rheometers", force: :cascade do |t|
    t.integer "sample"
    t.float "size"
    t.string "nature"
    t.float "temperature"
    t.float "current"
    t.string "shear_type"
    t.float "shear_rate"
    t.string "sweeps"
    t.string "analysis"
    t.string "toxicity"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.string "stype"
    t.integer "user_id"
    t.index ["user_id"], name: "index_advance_molecular_rheometers_on_user_id"
  end

  create_table "atomic_force_microscopes", force: :cascade do |t|
    t.integer "sample"
    t.string "stype"
    t.string "technique"
    t.float "scan_rate"
    t.float "x"
    t.float "y"
    t.string "description"
    t.string "toxicity"
    t.string "compatability"
    t.string "carcinogenic"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_atomic_force_microscopes_on_user_id"
  end

  create_table "ball_mailings", force: :cascade do |t|
    t.integer "sample"
    t.string "feed"
    t.string "btype"
    t.string "grind"
    t.string "specify"
    t.float "size"
    t.float "grinding"
    t.float "speed"
    t.string "hardness"
    t.string "toxicity"
    t.string "compatibility"
    t.string "more"
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_ball_mailings_on_user_id"
  end

  create_table "bets", force: :cascade do |t|
    t.integer "sample"
    t.string "degassing"
    t.string "incompatibe"
    t.string "toxicity"
    t.string "disposal"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.string "analysiscustom"
    t.string "analysisstandard"
    t.integer "user_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "cell_imagings", force: :cascade do |t|
    t.integer "sample"
    t.string "stype"
    t.string "plate"
    t.string "expected_wavelenght"
    t.string "assay_type"
    t.string "detection"
    t.string "image_filter"
    t.string "image_mode"
    t.string "toxicity"
    t.string "compatibility"
    t.string "hazard"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.index ["user_id"], name: "index_cell_imagings_on_user_id"
  end

  create_table "electro_chemicals", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "electrolyte"
    t.string "application"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_electro_chemicals_on_user_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "status"
    t.text "location"
  end

  create_table "faculties", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "department"
    t.string "email"
  end

  create_table "five_axis", force: :cascade do |t|
    t.integer "sample"
    t.string "material"
    t.string "depth"
    t.string "operation"
    t.string "tool"
    t.string "specimentolerance"
    t.string "cncprogram"
    t.string "rotationalspeed"
    t.string "feedrate"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_five_axis_on_user_id"
  end

  create_table "frictions", force: :cascade do |t|
    t.integer "sample"
    t.string "material"
    t.string "pstype"
    t.string "tool"
    t.string "toolnom"
    t.float "rspeed"
    t.float "wspeed"
    t.float "otforce"
    t.float "wtforce"
    t.string "measurement"
    t.float "depth"
    t.float "ptforce"
    t.string "more"
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "temp"
    t.integer "user_id"
    t.index ["user_id"], name: "index_frictions_on_user_id"
  end

  create_table "gaits", force: :cascade do |t|
    t.string "subject"
    t.string "measurement"
    t.integer "trials"
    t.string "output_format"
    t.string "force_plate"
    t.string "clinical_trial"
    t.string "physician"
    t.string "more"
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_gaits_on_user_id"
  end

  create_table "gas_sensings", force: :cascade do |t|
    t.integer "sample"
    t.string "gas"
    t.string "toxicity"
    t.string "compatibility"
    t.string "carcinogenic"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_gas_sensings_on_user_id"
  end

  create_table "glove_boxes", force: :cascade do |t|
    t.float "weight"
    t.integer "days"
    t.string "toxicity"
    t.string "carcinogenic"
    t.string "incompatible"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_glove_boxes_on_user_id"
  end

  create_table "glows", force: :cascade do |t|
    t.integer "sample"
    t.string "elemental"
    t.string "coated"
    t.string "coated_ele"
    t.string "substarte"
    t.string "specification"
    t.string "more"
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_glows_on_user_id"
  end

  create_table "grindings", force: :cascade do |t|
    t.integer "sample"
    t.float "diameter"
    t.string "mould"
    t.string "grit"
    t.string "diamond"
    t.string "suspension"
    t.string "lapping"
    t.string "more"
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_grindings_on_user_id"
  end

  create_table "high_temp_vaccums", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "toxicity"
    t.string "req_atoms"
    t.string "gas"
    t.float "starttemp"
    t.float "endtemp"
    t.float "samplemelting"
    t.string "no_steps"
    t.float "temp1"
    t.float "min1"
    t.float "temp2"
    t.float "min2"
    t.float "temp3"
    t.float "min3"
    t.float "temp4"
    t.float "min4"
    t.float "temp5"
    t.float "min5"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_high_temp_vaccums_on_user_id"
  end

  create_table "hr_fesem_cs", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "stype"
    t.string "sphase"
    t.string "measurement"
    t.string "eds_required"
    t.string "toxic"
    t.string "conducting"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_hr_fesem_cs_on_user_id"
  end

  create_table "hr_fesem_js", force: :cascade do |t|
    t.string "sample"
    t.string "composition"
    t.string "stype"
    t.string "sphase"
    t.string "measurement"
    t.string "eds_required"
    t.string "toxic"
    t.string "conducting"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.index ["user_id"], name: "index_hr_fesem_js_on_user_id"
  end

  create_table "hrlcms", force: :cascade do |t|
    t.integer "sample"
    t.string "nature_sample"
    t.string "category"
    t.string "sample_type"
    t.string "solvent"
    t.string "analysis"
    t.float "sample_volume"
    t.string "sample_concentration"
    t.string "sample_salts"
    t.string "sample_contains"
    t.string "storage"
    t.string "testing_required"
    t.string "incompatible"
    t.string "toxicity"
    t.string "disposal"
    t.string "health"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_hrlcms_on_user_id"
  end

  create_table "icp_ms", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "sample_phase"
    t.string "nature"
    t.string "concentration"
    t.string "testing"
    t.string "toxicity"
    t.string "compatibility"
    t.string "hazard"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.string "acid"
    t.string "storage_condition"
    t.string "temp"
    t.integer "user_id"
    t.index ["user_id"], name: "index_icp_ms_on_user_id"
  end

  create_table "impedance_analies", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "capacitance"
    t.string "dielectric"
    t.string "iv"
    t.float "freqrange"
    t.float "currentrange"
    t.float "voltagerange"
    t.string "impedance"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "losstangent"
    t.integer "user_id"
    t.index ["user_id"], name: "index_impedance_analies_on_user_id"
  end

  create_table "integrated_multi_role_testers", force: :cascade do |t|
    t.integer "sample"
    t.string "measurement"
    t.string "loading"
    t.string "temperature"
    t.string "analysis"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.string "indentation"
    t.string "stype"
    t.integer "user_id"
    t.index ["user_id"], name: "index_integrated_multi_role_testers_on_user_id"
  end

  create_table "ion_chromotographies", force: :cascade do |t|
    t.integer "sample"
    t.string "nature"
    t.string "solvent"
    t.float "volume"
    t.float "concentration"
    t.string "eluent"
    t.string "analysis"
    t.string "elements"
    t.string "column"
    t.float "flow_rate"
    t.float "temperature"
    t.string "detector"
    t.string "toxicity"
    t.string "hazards"
    t.string "disposal"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.string "hazard_yes"
    t.string "disposal_yes"
    t.integer "user_id"
    t.index ["user_id"], name: "index_ion_chromotographies_on_user_id"
  end

  create_table "lasers", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "stype"
    t.string "temp_points"
    t.string "toxicity"
    t.string "compatibility"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_lasers_on_user_id"
  end

  create_table "liquid_nitrogens", force: :cascade do |t|
    t.float "quantity"
    t.string "purpose"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_liquid_nitrogens_on_user_id"
  end

  create_table "low_fatigues", force: :cascade do |t|
    t.integer "sample"
    t.string "sc1"
    t.string "st1"
    t.string "tt1"
    t.string "tf1"
    t.string "sc2"
    t.string "st2"
    t.string "tt2"
    t.string "tf2"
    t.string "sc3"
    t.string "st3"
    t.string "tt3"
    t.string "tf3"
    t.string "sc4"
    t.string "st4"
    t.string "tt4"
    t.string "tf4"
    t.string "sc5"
    t.string "st5"
    t.string "tt5"
    t.string "tf5"
    t.string "more"
    t.time "slottime"
    t.date "slotdate"
    t.string "status"
    t.string "debit"
    t.string "m1"
    t.string "m2"
    t.string "m3"
    t.string "m4"
    t.string "m5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_low_fatigues_on_user_id"
  end

  create_table "micro_edms", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.string "toolelectrode"
    t.string "toolmaterial"
    t.string "milling"
    t.string "turning"
    t.string "drilling"
    t.string "edm"
    t.string "edg"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "milli_qs", force: :cascade do |t|
    t.string "typewater"
    t.float "volumeone"
    t.float "volumetwo"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "projectfund"
    t.integer "user_id"
    t.index ["user_id"], name: "index_milli_qs_on_user_id"
  end

  create_table "multi_impact_testers", force: :cascade do |t|
    t.integer "sample"
    t.string "stype"
    t.integer "size"
    t.string "measuerment"
    t.float "drop_range"
    t.float "drop_velocity"
    t.float "drop_temp"
    t.string "drop_shape"
    t.float "shpb_lenght"
    t.float "shpb_temp"
    t.float "bullet_velocity"
    t.float "bullet_shape"
    t.float "bird_velocity"
    t.string "bird_shape"
    t.string "more"
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_multi_impact_testers_on_user_id"
  end

  create_table "nameps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "probe_sonicators", force: :cascade do |t|
    t.integer "sample"
    t.float "size"
    t.float "amplitude"
    t.float "volume"
    t.float "viscosity"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_probe_sonicators_on_user_id"
  end

  create_table "raman_microscopes", force: :cascade do |t|
    t.integer "sample"
    t.string "measurement"
    t.string "stype"
    t.string "description"
    t.string "toxicity"
    t.string "Compatability"
    t.string "carcinogenic"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.string "laser"
    t.integer "user_id"
    t.index ["user_id"], name: "index_raman_microscopes_on_user_id"
  end

  create_table "scratch_indentations", force: :cascade do |t|
    t.integer "sample"
    t.string "measurement"
    t.string "stroke"
    t.string "number_indentation"
    t.string "constant_load"
    t.string "increment_load"
    t.string "progressive_load"
    t.string "temperature"
    t.string "analysis"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.string "stype"
    t.integer "user_id"
    t.index ["user_id"], name: "index_scratch_indentations_on_user_id"
  end

  create_table "spark_os", force: :cascade do |t|
    t.integer "sample"
    t.string "composition"
    t.integer "samplefe"
    t.integer "sampleni"
    t.integer "samplezn"
    t.integer "samplesn"
    t.integer "samplecu"
    t.integer "sampleti"
    t.integer "sampleal"
    t.integer "samplepb"
    t.integer "samplemg"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_spark_os_on_user_id"
  end

  create_table "spectro_radio_meters", force: :cascade do |t|
    t.integer "sample"
    t.string "nature"
    t.string "application"
    t.string "stype"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_spectro_radio_meters_on_user_id"
  end

  create_table "tga_fttrs", force: :cascade do |t|
    t.integer "sample"
    t.string "measurement"
    t.string "stype"
    t.string "description"
    t.string "nature"
    t.string "min_temp"
    t.string "max_temp"
    t.string "scan_rate"
    t.string "atmosphere"
    t.string "hazard"
    t.string "compatability"
    t.string "carcinogenic"
    t.string "explosive"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.string "atr"
    t.string "kbr"
    t.string "yordinate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_tga_fttrs_on_user_id"
  end

  create_table "three_d_non_contacts", force: :cascade do |t|
    t.integer "sample"
    t.string "scant"
    t.string "stepinterval"
    t.string "incompatible"
    t.string "toxicity"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.float "xrange"
    t.float "yrange"
    t.integer "user_id"
    t.index ["user_id"], name: "index_three_d_non_contacts_on_user_id"
  end

  create_table "three_d_scanners", force: :cascade do |t|
    t.integer "sample"
    t.integer "size"
    t.string "texture"
    t.string "ply"
    t.string "stt"
    t.string "wrl"
    t.string "obj"
    t.string "asc"
    t.string "aop"
    t.string "ptx"
    t.string "xyzrgb"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_three_d_scanners_on_user_id"
  end

  create_table "tribometers", force: :cascade do |t|
    t.integer "sample"
    t.string "measurement"
    t.string "stype"
    t.float "temp_req"
    t.float "loading"
    t.string "indenter"
    t.float "stroke"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "debit"
    t.time "slottime"
    t.date "slotdate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_tribometers_on_user_id"
  end

  create_table "ultra_centrifuges", force: :cascade do |t|
    t.integer "sample"
    t.float "volume"
    t.float "speed"
    t.float "temperature"
    t.string "toxicity"
    t.string "compatibility"
    t.string "carcinogenic"
    t.string "more"
    t.string "debit"
    t.date "slotdate"
    t.time "slottime"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_ultra_centrifuges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "department"
    t.string "course"
    t.string "orgname"
    t.string "orgaddress"
    t.binary "collegeid"
    t.string "profession"
    t.string "rollno"
    t.string "contact"
    t.string "lastname"
    t.string "role"
    t.boolean "admin_role"
    t.boolean "chairman_role"
    t.string "name"
    t.string "slotbooker"
    t.string "firstname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "uv_vis_nirs", force: :cascade do |t|
    t.string "sample"
    t.string "srange"
    t.string "erange"
    t.string "composition"
    t.string "toxicity"
    t.string "sampletype"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.date "slotdate"
    t.time "slottime"
    t.string "debit"
    t.string "transmittance"
    t.string "absorbance"
    t.string "reflectance"
    t.integer "user_id"
    t.string "measurement"
    t.index ["user_id"], name: "index_uv_vis_nirs_on_user_id"
  end

  create_table "xrds", force: :cascade do |t|
    t.integer "sample"
    t.string "measurement"
    t.string "composition"
    t.string "stype"
    t.float "mind"
    t.float "maxd"
    t.binary "reference"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "debit"
    t.integer "user_id"
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "amount"
    t.index ["user_id"], name: "index_xrds_on_user_id"
  end

  create_table "zeta_potential_sizes", force: :cascade do |t|
    t.integer "sample"
    t.string "toxicity"
    t.string "element"
    t.string "solvent"
    t.string "refractive_index"
    t.string "angle"
    t.string "analysis_type"
    t.string "analysis_temperature"
    t.string "more"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.time "slottime"
    t.date "slotdate"
    t.string "debit"
    t.string "stype"
    t.float "viscositypoise"
    t.float "viscositytemp"
    t.string "soluteknown"
    t.string "solutename"
    t.float "refindex"
    t.string "abscoefficent"
    t.integer "user_id"
    t.index ["user_id"], name: "index_zeta_potential_sizes_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "advance_molecular_rheometers", "users"
  add_foreign_key "atomic_force_microscopes", "users"
  add_foreign_key "ball_mailings", "users"
  add_foreign_key "bets", "users"
  add_foreign_key "cell_imagings", "users"
  add_foreign_key "electro_chemicals", "users"
  add_foreign_key "five_axis", "users"
  add_foreign_key "frictions", "users"
  add_foreign_key "gaits", "users"
  add_foreign_key "gas_sensings", "users"
  add_foreign_key "glove_boxes", "users"
  add_foreign_key "glows", "users"
  add_foreign_key "grindings", "users"
  add_foreign_key "high_temp_vaccums", "users"
  add_foreign_key "hr_fesem_cs", "users"
  add_foreign_key "hr_fesem_js", "users"
  add_foreign_key "hrlcms", "users"
  add_foreign_key "icp_ms", "users"
  add_foreign_key "impedance_analies", "users"
  add_foreign_key "integrated_multi_role_testers", "users"
  add_foreign_key "ion_chromotographies", "users"
  add_foreign_key "lasers", "users"
  add_foreign_key "liquid_nitrogens", "users"
  add_foreign_key "low_fatigues", "users"
  add_foreign_key "milli_qs", "users"
  add_foreign_key "multi_impact_testers", "users"
  add_foreign_key "probe_sonicators", "users"
  add_foreign_key "raman_microscopes", "users"
  add_foreign_key "scratch_indentations", "users"
  add_foreign_key "spark_os", "users"
  add_foreign_key "spectro_radio_meters", "users"
  add_foreign_key "tga_fttrs", "users"
  add_foreign_key "three_d_non_contacts", "users"
  add_foreign_key "three_d_scanners", "users"
  add_foreign_key "tribometers", "users"
  add_foreign_key "ultra_centrifuges", "users"
  add_foreign_key "uv_vis_nirs", "users"
  add_foreign_key "xrds", "users"
  add_foreign_key "zeta_potential_sizes", "users"
end
