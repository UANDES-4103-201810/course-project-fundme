class FundbyPromise < ApplicationRecord
  belongs_to :promise
  belongs_to :project
  belongs_to :user
end
