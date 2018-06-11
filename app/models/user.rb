class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :pay_methods
  has_one :contact_information
  has_one :wishlist
  has_many :projects,through: :funds
  has_many :funds
  has_many :projects
  has_many :fundby_promises

  validates :name, presence: true
  validates :last_name, presence: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },:default_url => "/assets/:style/prof.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.from_omniauth(auth)
    where(provider: auth.provider , uid: auth.uid).first_or_create do | user |
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end
end
