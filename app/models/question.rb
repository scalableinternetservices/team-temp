class Question < ApplicationRecord
  has_many :answers
  validates :description, length: { maximum: 200 }, presence: true
end
