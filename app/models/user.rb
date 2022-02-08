class User < ApplicationRecord
  validates :name, :password, presence: true
  validates :name, uniqueness: true
  validates :password, length: { in: 8..30 }

  has_many :posts
  has_many :comments
end
