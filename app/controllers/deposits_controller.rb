class DepositsController < InheritedResources::Base
  layout "accounts"
  before_action :authenticate_user!
  before_action :set_deposit, only: [:show, :edit, :update, :destroy]

  def index
    @deposits = Deposit.where(user_id: current_user).order('created_at DESC')
  end

  def show
  end

  def new
    @deposit = current_user.deposits.build
  end

  def create
    @deposit = current_user.deposits.build(deposit_params)
    @deposit.user_id = current_user.id
    respond_to do |format|
      if @deposit.save
        user = User.find_by_id(@deposit.user_id)
        deposit = @deposit
        DepositMailer.deposit_email(user, deposit).deliver
        format.html { redirect_to root_path, notice: 'We have received your deposit request we will contact you soon.' }
        format.json { render :show, status: :created, location: @deposit }
      else
        format.html { render :new }
        format.json { render json: @deposit.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def set_deposits
    @deposit = Deposit.find(params[:id])
  end

    def deposit_params
      params.require(:deposit).permit(:amount, :payment_type, :email, :plan, :status, :user_id)
    end
end
