class Answer < ApplicationRecord
  acts_as_votable
  belongs_to :question
  belongs_to :user
  validates :description, length: { maximum: 400 }, presence: true
end
