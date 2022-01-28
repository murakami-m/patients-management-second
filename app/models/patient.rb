class Patient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :doctor
  belongs_to :ward
  belongs_to :adjustment_manager
  belongs_to :state

  with_options presence: true do
    validates :number 
    validates :name
    validates :name_kana
    validates :birthday
    validates :age
    validates :gender_id, numericality: { other_than: 1 }
    validates :address
    validates :disease
    validates :doctor_id, numericality: { other_than: 1 }
    validates :ward_id, numericality: { other_than: 1 }
    validates :key_person_relationship
    validates :before_hospitalization
    validates :state_id, numericality: { other_than: 1 }
  end
end
