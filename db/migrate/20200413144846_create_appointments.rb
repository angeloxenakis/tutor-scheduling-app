class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :tutor_id
      t.integer :student_id
      t.integer :subject_id
      t.date :date 
      t.time :time
    end
  end
end
