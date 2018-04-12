class Fund < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :pay_method
  has_one :promise
end
