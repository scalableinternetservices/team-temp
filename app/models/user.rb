class User < ApplicationRecord
  acts_as_voter
  has_many :answers
  has_many :questions
  validates :username, presence: true, uniqueness: true, length: { maximum: 256 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
