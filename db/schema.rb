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

ActiveRecord::Schema[8.0].define(version: 2026_04_19_234047) do
  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actions_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "action_id", null: false
  end

  create_table "bow_articulations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bow_locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bow_portions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bow_precise_locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bow_signs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bow_techniques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bow_techniques_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "bow_technique_id", null: false
  end

  create_table "caracteres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finger_restraints", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fingerings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "focus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "harmonique_natures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "harmonique_natures_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "harmonique_nature_id", null: false
  end

  create_table "intervalles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intervalles_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "intervalle_id", null: false
  end

  create_table "left_hand_techniques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "left_hand_techniques_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "left_hand_technique_id", null: false
  end

  create_table "measure_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measure_units_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "measure_unit_id", null: false
  end

  create_table "modificateurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modificateurs_musical_fragments", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "modificateur_id", null: false
  end

  create_table "musical_fragments", force: :cascade do |t|
    t.string "title"
    t.integer "source_title_id", null: false
    t.integer "start_measure"
    t.integer "end_measure"
    t.string "lilypond_id"
    t.integer "nuance_id", null: false
    t.integer "caractere_id", null: false
    t.integer "bow_portion_id", null: false
    t.integer "bow_location_id", null: false
    t.integer "position_id", null: false
    t.integer "focus_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bow_location_id"], name: "index_musical_fragments_on_bow_location_id"
    t.index ["bow_portion_id"], name: "index_musical_fragments_on_bow_portion_id"
    t.index ["caractere_id"], name: "index_musical_fragments_on_caractere_id"
    t.index ["focus_id"], name: "index_musical_fragments_on_focus_id"
    t.index ["nuance_id"], name: "index_musical_fragments_on_nuance_id"
    t.index ["position_id"], name: "index_musical_fragments_on_position_id"
    t.index ["source_title_id"], name: "index_musical_fragments_on_source_title_id"
  end

  create_table "musical_fragments_mystrings", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "mystring_id", null: false
    t.index ["musical_fragment_id", "mystring_id"], name: "idx_on_musical_fragment_id_mystring_id_426a97f700"
    t.index ["mystring_id", "musical_fragment_id"], name: "idx_on_mystring_id_musical_fragment_id_be85a25959"
  end

  create_table "musical_fragments_rhythmic_types", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "rhythmic_type_id", null: false
  end

  create_table "musical_fragments_type_accords", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "type_accord_id", null: false
  end

  create_table "musical_fragments_voices", id: false, force: :cascade do |t|
    t.integer "musical_fragment_id", null: false
    t.integer "voice_id", null: false
  end

  create_table "musical_phrasings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mystrings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nuances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piece_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rhythmic_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "silences", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "source_titles", force: :cascade do |t|
    t.string "musical_instrument_id"
    t.string "composer"
    t.string "id_opus"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_accords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "musical_fragments", "bow_locations"
  add_foreign_key "musical_fragments", "bow_portions"
  add_foreign_key "musical_fragments", "caracteres"
  add_foreign_key "musical_fragments", "focus"
  add_foreign_key "musical_fragments", "nuances"
  add_foreign_key "musical_fragments", "positions"
  add_foreign_key "musical_fragments", "source_titles"
end
