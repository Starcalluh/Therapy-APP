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

ActiveRecord::Schema.define(version: 2019_12_03_215752) do

  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
    t.string "date"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
  end

  create_table "patient_forms", force: :cascade do |t|
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
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "doctor_id"
  end

end
