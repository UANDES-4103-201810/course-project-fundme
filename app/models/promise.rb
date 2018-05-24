class Promise < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :description, presence: true
  validates :estimated_delivery_date, presence: true
  validates :amount, presence: true
  validates :amount, :numericality => { :greater_than => 0}
  validate :estimated_delivery_date_cannot_be_in_the_past

  def estimated_delivery_date_cannot_be_in_the_past
    if estimated_delivery_date.present? && estimated_delivery_date < Date.today
      errors.add(:estimated_delivery_date, "can't be in the past")
    end
  end
end
