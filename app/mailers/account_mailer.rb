class AccountMailer < ApplicationMailer
  default :from => "support@cryptontrades.com"
  def account_email(user, account)
    @user = user
    @account = account
     mail(to: user.email, subject: 'Welcome To Your Account')
  end
end
