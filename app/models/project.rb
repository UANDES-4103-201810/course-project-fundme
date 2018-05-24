class Project < ApplicationRecord

  has_many :wishlist_projects
  has_many :users,through: :funds
  has_many :funds
  belongs_to :user


  has_attached_file :image, styles: { small: "30x30>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
  validates :status, presence: true
  validates :days_to_go, presence: true
  validates :days_to_go, :numericality => { :greater_than => 0}
  validates :goal_amount, :numericality => { :greater_than => 0}
  validates :marckdown, presence: true
  validates :description, presence: true
  validates :goal_amount, presence: true
  validates :category_id, presence: true
end
