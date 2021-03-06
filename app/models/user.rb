class User < ApplicationRecord
  validates :username, length: { minimum: 2 }, uniqueness: true, null: false
  validates :email, length: { minimum: 10 }, uniqueness: true, null: false
  validates :title, length: { minimum: 2 }, uniqueness: true, null: false
  has_many :posts
  has_many :comments
end
