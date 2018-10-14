class FaqsController < InheritedResources::Base

  before_action :find_faqs, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @faqs = Faq.all.order('created_at DESC')
  end

  def show
  end

  private
  def find_faqs
    @faq = Faq.friendly.find(params[:id])
  end
  def faqs_param
      params.require(:faq).permit(:title, :body, :slug)
    end
end
