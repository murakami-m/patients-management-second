class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :department
  has_many :accept_comments

  validates :number, :name, presence: true
  validates :department_id, numericality: { other_than: 1 }
end
