class WithdrawMailer < ApplicationMailer
  default :from => "support@xpressbittrade.com"
  def withdraw_email(user, withdraw)
    @user = user
    @withdraw = withdraw
     mail(to: "support@xpressbittrade.com", subject: 'withdraw Request')
  end
end
