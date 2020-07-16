class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, length: { minimum: 2 }, uniqueness: true, null: false
  validates :body, null: false
  validates :user_id, null: false
end
