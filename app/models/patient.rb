class Patient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :doctor
  belongs_to :ward
  belongs_to :adjustment_manager
  belongs_to :state
  belongs_to :accept_existence
  has_many :accept_comments
  has_many :discharge_comments

  with_options presence: true do
    validates :number, uniqueness: true, numericality: { only_integer: true }, length: { is: 4 }
    validates :name
    validates :name_kana
    validates :birthday
    validates :age, numericality: { only_integer: true }, length: { minimum: 1, maximum: 3 }
    validates :gender_id, numericality: { other_than: 1 }
    validates :address
    validates :disease
    validates :doctor_id, numericality: { other_than: 1 }
    validates :ward_id, numericality: { other_than: 1 }
    validates :key_person_relationship
    validates :before_hospitalization
    validates :state_id, numericality: { other_than: 1 }
    validates :accept_existence_id, numericality: { other_than: 1 }
  end

  def self.search(search)
    if search != ''
      Patient.where('name LIKE(?)', "%#{search}%")
    else
      Patient.all
    end
  end

  def self.current_medicine
  end

  def self.current_surgery
  end

  def self.current_orthopedics
  end
end
