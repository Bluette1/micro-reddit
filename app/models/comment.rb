class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, null: false
  validates :user_id, null: false
  validates :post_id, null: false
end
