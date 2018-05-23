class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_projects
  has_many :projects, through: :wishlist_projects
end