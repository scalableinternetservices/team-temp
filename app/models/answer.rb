class Answer < ApplicationRecord
  belongs_to :question
  validates :description, length: { maximum: 400 }, presence: true
end
