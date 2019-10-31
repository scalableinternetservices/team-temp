class Question < ApplicationRecord
  has_many :answers
  belongs_to :user
  validates :description, length: { maximum: 400 }, presence: true
end
