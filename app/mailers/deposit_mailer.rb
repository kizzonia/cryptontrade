class DepositMailer < ApplicationMailer
  default :from => "support@xpressbittrade.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit
     mail(to: "support@xpressbittrade.com", subject: 'deposit Request')
  end
end
