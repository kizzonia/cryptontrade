class HomeController < ApplicationController
  def new
    @home = Home.new
  end

    def create
      @home = Home.new(params[:home])
      @home.request = request
      if @home.deliver
        redirect_to root_path, notice: "We will get in touch soon"
        flash.now[:error] = nil
      else
        flash.now[:error] = 'cannot send message.'
        render :new
      end
    end
end
