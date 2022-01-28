class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.integer    :number
      t.string     :name,                    null: false
      t.string     :name_kana,               null: false
      t.date       :birthday,                null: false
      t.integer    :age,                     null: false
      t.integer    :gender_id,               null: false
      t.string     :address,                 null: false
      t.string     :disease,                 null: false
      t.integer    :doctor_id,               null: false
      t.integer    :ward_id,                 null: false
      t.string     :key_person_relationship, null: false
      t.text       :remarks
      t.string     :before_hospitalization,  null: false
      t.integer    :adjustment_manager_id      
      t.date       :hospitalization_date
      t.date       :discharge_date
      t.integer    :state_id,                null: false
      t.date       :accept_expected_date
      t.date       :discharge_expected_date
      t.string     :destination
      t.string     :key_person_address
      t.timestamps
    end
  end
end
