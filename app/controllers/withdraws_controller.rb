class WithdrawsController < InheritedResources::Base
  layout "accounts"
  before_action :authenticate_user!
  before_action :set_withdraw, only: [:show, :edit, :update, :destroy]

  def index
    @withdraws = Withdraw.where(user_id: current_user).order('created_at DESC')
  end

  def show
  end

  def new
    @withdraw = current_user.withdraws.build
  end

  def create
    @withdraw = current_user.withdraws.build(withdraw_params)
    @withdraw.user_id = current_user.id
    respond_to do |format|
     if @withdraw.save
        user = User.find_by_id(@withdraw.user_id)
        withdraw = @withdraw
        WithdrawMailer.withdraw_email(user, withdraw).deliver
        format.html { redirect_to root_path, notice: 'We have received your withdrawal  request we will contact you soon.' }
        format.json { render :show, status: :created, location: @withdraw }
      else
        format.html { render :new }
        format.json { render json: @withdraw.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def set_withdraws
    @withdraw = Withdraw.find(params[:id])
  end


    def withdraw_params
      params.require(:withdraw).permit(:amount, :payment_method, :email, :user_id)
    end
end
