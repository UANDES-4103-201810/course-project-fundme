class User < ApplicationRecord
  has_many :pay_methods
  has_one :contact_information
  has_many :wishlists
  has_many :projects,through: :wishlists
  has_many :projects,through: :funds
  has_many :funds

  validates :name, presence: true
  validates :last_name, presence: true
  validates :password, length: {in: 8..20}
  validates :mail, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

end
