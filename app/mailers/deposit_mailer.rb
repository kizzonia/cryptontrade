class DepositMailer < ApplicationMailer
  default :from => "support@cryptontrades.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit
     mail(to: user.email, subject: 'Deposit Request ')
  end
end
