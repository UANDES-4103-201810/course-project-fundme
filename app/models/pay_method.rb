class PayMethod < ApplicationRecord
  belongs_to :user
  belongs_to :fund

  validates :card_number, length: {is: 16}
  validates :name_in_card, presence: true
  validates :card_number, presence: true
  validates :expiration_date, presence: true
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end
end
