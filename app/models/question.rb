class Question < ApplicationRecord
  has_many :answers
  belongs_to :user
  belongs_to :category
  validates :description, length: { maximum: 400 }, presence: true
end
