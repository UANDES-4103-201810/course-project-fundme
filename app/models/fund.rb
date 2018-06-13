class Fund < ApplicationRecord
   belongs_to :user
   belongs_to :project
   has_one :pay_method

  before_create :confirmation_token

  validates :pay_method_id, presence: true
  validates :amount, :numericality => { :greater_than => 0}

   def email_activate
     self.email_confirmation = true
     self.confirm_token = nil
     save!(:validate => false )
   end

  private
  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end


end
