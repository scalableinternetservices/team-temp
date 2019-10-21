class Question < ApplicationRecord
  has_many :answers
  validates :description, length: { maximum: 400 }, presence: true
end
