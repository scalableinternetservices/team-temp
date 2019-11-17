class Question < ApplicationRecord
  acts_as_votable
  has_many :answers
  belongs_to :user
  belongs_to :category, optional: true
  validates :description, length: { maximum: 400 }, presence: true
end
