class Category < ApplicationRecord
  validates :name, length: { maximum: 400 }, uniqueness: true, presence: true
  has_many :questions
end
