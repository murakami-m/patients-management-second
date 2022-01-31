class CreateDischargeComments < ActiveRecord::Migration[6.0]
  def change
    create_table :discharge_comments do |t|
      t.integer    :user_id
      t.integer    :patient_id
      t.text       :text
      t.timestamps
    end
  end
end
