class Project < ApplicationRecord
  has_many :wishlists
  has_many :users,through: :wishlists
  has_many :users,through: :funds
  has_many :funds
  belongs_to :user
end
