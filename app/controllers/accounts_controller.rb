class AccountsController < ApplicationController
  layout "accounts"
  before_action :find_account, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :find_users, only: [:index, ]
  def index
    @users = User.where(user_id: current_user)
    @accounts = Account.where(user_id: current_user).order('created_at DESC')
    @deposits = Deposit.where(user_id: current_user).order('created_at DESC')
    @trades = Trade.where(user_id: current_user).order('created_at DESC')
    @withdraws = Withdraw.where(user_id: current_user).order('created_at DESC')
  end
  def show
  end
  def new
    @account = current_user.accounts.build
  end
  def create
    @account = current_user.accounts.build(account_params)
    if @account.save
      redirect_to root_path, notice: "Welcome To Your Trading Account Please Start Auto-Trade By Making A Deposit Now"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @account.update(account_params)
      redirect_to @account
    else
      render 'edit'
    end
  end

  private
  def find_account
    @account = Account.friendly.find(params[:id])
  end

  def find_users
    if params[:id].nil?
      @user = current_user
    end
  end
    def account_params
      params.require(:account).permit(:balance, :address,  :user_id)
    end
end
