class CreateAcceptComments < ActiveRecord::Migration[6.0]
  def change
    create_table :accept_comments do |t|
      t.integer    :user_id
      t.integer    :patient_id
      t.text       :text
      t.timestamps
    end
  end
end
