class User < ApplicationRecord
  has_many :pay_methods
  has_one :contact_information
  has_many :wishlists
  has_many :projects,through: :wishlists
  has_many :projects,through: :funds
  has_many :funds

end
