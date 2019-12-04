class CreateAppointment < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :doctor_id
      t.string :patient_id
      t.integer :time 
      t.integer :date 
      t.timestamps
    end
  end
end
