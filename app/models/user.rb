class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pay_methods
  has_one :contact_information
  has_many :wishlists
  has_many :projects,through: :wishlists
  has_many :projects,through: :funds
  has_many :funds

  validates :name, presence: true
  validates :last_name, presence: true
end
