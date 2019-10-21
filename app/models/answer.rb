class Answer < ApplicationRecord
  belongs_to :question
  validates :description, length: { maximum: 200 }, presence: true
end
