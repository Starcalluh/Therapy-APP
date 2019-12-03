class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :paients do |t|
      t.string :name
      t.string :phone_number
      t.string :doctor_id
    end
  end
end
