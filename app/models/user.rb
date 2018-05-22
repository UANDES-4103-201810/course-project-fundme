class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pay_methods
  has_one :contact_information
  has_one :wishlists
  has_many :projects,through: :funds
  has_many :funds
  has_many :projects

  validates :name, presence: true
  validates :last_name, presence: true
end
