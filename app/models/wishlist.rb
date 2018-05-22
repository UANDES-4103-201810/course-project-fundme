class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_projects
end