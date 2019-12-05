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

ActiveRecord::Schema.define(version: 2019_12_03_202942) do

  create_table "appointments", force: :cascade do |t|
    t.string "doctor_id"
    t.string "patient_id"
    t.integer "time"
    t.integer "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.boolean "you_have_been_to_therapy_before"
    t.boolean "you_are_currently_on_medication"
    t.boolean "you_have_experienced_suicidal_thoughts"
    t.boolean "you_have_a_known_mental_illness"
    t.boolean "you_are_you_committed_to_treatment"
    t.boolean "you_have_any_medical_problems"
    t.boolean "you_experience_hallucinations"
    t.boolean "are_you_sexually_active"
    t.boolean "you_have_pets"
    t.boolean "you_have_been_convicted_of_a_crime"
    t.boolean "you_are_in_a_relationship"
    t.boolean "you_speak_english_fluently"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
