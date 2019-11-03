class Category < ApplicationRecord
  belongs_to :question
  validates :name, length: { maximum: 400 }, presence: true
end
