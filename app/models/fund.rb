class Fund < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :pay_method
  has_one :promise

  validates :pay_method, presence: true
  validates :amount, :numericality => { :greater_than => 0}
end
