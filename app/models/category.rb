class Category < ApplicationRecord
  validates :name, length: { maximum: 400 }, uniqueness: true, presence: true
  has_many :questions
  
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
