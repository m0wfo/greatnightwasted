class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter :load_basket
  
  private
  
  def load_basket
    session[:basket] ||= []
    @items = Product.find(session[:basket].uniq)
  end
end
