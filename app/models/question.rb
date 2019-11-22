class Question < ApplicationRecord
  acts_as_votable
  has_many :answers
  belongs_to :user
  belongs_to :category, optional: true
  validates :description, length: { maximum: 400 }, presence: true
  
  def self.search(search)
    if search
      category = Category.find_by(name: search)
      if category
        self.where(category_id: category)
      else
        Question.all
      end
    else
      Question.all
    end
  end
end
