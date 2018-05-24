class Fund < ApplicationRecord
   belongs_to :user
   belongs_to :project
   has_one :pay_method


  validates :pay_method_id, presence: true
  validates :amount, :numericality => { :greater_than => 0}
end
