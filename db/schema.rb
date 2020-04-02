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

ActiveRecord::Schema.define(version: 2020_04_02_163900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "email"
  end

  create_table "records", force: :cascade do |t|
    t.string "doctor_first_name"
    t.string "doctor_last_name"
    t.string "practice_name"
    t.date "visit_date"
    t.string "title"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id", null: false
    t.index ["patient_id"], name: "index_records_on_patient_id"
  end

  add_foreign_key "records", "patients"
end
