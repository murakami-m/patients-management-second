# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_28_051418) do

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "number"
    t.string "name", null: false
    t.string "name_kana", null: false
    t.date "birthday", null: false
    t.integer "age", null: false
    t.integer "gender_id", null: false
    t.string "address", null: false
    t.string "disease", null: false
    t.integer "doctor_id", null: false
    t.integer "ward_id", null: false
    t.string "key_person_relationship", null: false
    t.text "remarks"
    t.string "before_hospitalization", null: false
    t.integer "adjustment_manager_id"
    t.date "hospitalization_date"
    t.date "discharge_date"
    t.integer "state_id", null: false
    t.integer "accept_existence_id", null: false
    t.date "accept_expected_date"
    t.date "discharge_expected_date"
    t.string "destination"
    t.string "key_person_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
