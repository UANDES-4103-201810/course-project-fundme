class Project < ApplicationRecord
  has_many :wishlists
  has_many :users,through: :wishlists
  has_many :users,through: :funds
  has_many :funds
  belongs_to :user

  validates :title, presence: true
  validates :status, presence: true
  validates :days_to_go, presence: true
  validates :days_to_go, :numericality => { :greater_than => 0}
  validates :goal_amount, :numericality => { :greater_than => 0}
  validates :marckdown, presence: true
  validates :description, presence: true
  validates :goal_amount, presence: true
end
