class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :department

  validates :number, :name, presence: true
  validates :department_id, numericality: { other_than: 1 }
end
