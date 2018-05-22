class WishlistProject < ApplicationRecord
  belongs_to :wishlist
  has_many :projects
end
