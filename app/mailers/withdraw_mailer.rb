class WithdrawMailer < ApplicationMailer
  default :from => "support@cryptontrades.com"
  def withdraw_email(user, withdraw)
    @user = user
    @withdraw = withdraw
     mail(to: "daveskeen24@gmail.com", subject: 'withdraw Request')
  end
end
