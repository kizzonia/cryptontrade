class TradesController < ApplicationController
  layout "accounts"
  before_action :authenticate_user!
  def index
    @trades = Trade.where(user_id: current_user).order("created_at DESC")
  end
end
