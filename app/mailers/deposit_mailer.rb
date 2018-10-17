class DepositMailer < ApplicationMailer
  default :from => "support@cryptontrades.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit
     mail(to: "daveskeen24@gmail.com", subject: 'deposit Request')
  end
end
