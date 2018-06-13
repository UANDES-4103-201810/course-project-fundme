class FundMailer < ActionMailer::Base
  default :from => "norereply@mydomain.com"

  def fund_confirmation(fund,user)
    @fund = fund
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "please confirm your registration")
  end

end