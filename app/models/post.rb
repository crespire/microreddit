class Post < ApplicationRecord
  validates :title, :body, :user_id, presence: true
  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 5 }
  validates :user_id, numericality: true

  belongs_to :user
  has_many :comments
end
