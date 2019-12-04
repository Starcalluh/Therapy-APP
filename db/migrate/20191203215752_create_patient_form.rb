class CreatePatientForm < ActiveRecord::Migration[6.0]
  def change
    create_table :patient_forms do |t|
      t.boolean :you_have_been_to_therapy_before
      t.boolean :you_are_currently_on_medication
      t.boolean :you_have_experienced_suicidal_thoughts
      t.boolean :you_have_a_known_mental_illness
      t.boolean :you_are_you_committed_to_treatment
      t.boolean :you_have_any_medical_problems
      t.boolean :you_experience_hallucinations
      t.boolean :are_you_sexually_active
      t.boolean :you_have_pets
      t.boolean :you_have_been_convicted_of_a_crime
      t.boolean :you_are_in_a_relationship
      t.boolean :you_speak_english_fluently
    end
  end
end
