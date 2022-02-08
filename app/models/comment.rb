class Comment < ApplicationRecord
  validates :body, :user_id, :post_id, presence: true
  validates :user_id, numericality: true
  validates :post_id, numericality: true

  belongs_to :user
  belongs_to :post
end
