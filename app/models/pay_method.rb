class PayMethod < ApplicationRecord
  belongs_to :user
  belongs_to :fund
end
