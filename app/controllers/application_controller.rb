class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery :secret => '8e904b952b7f617854e82703d574bf94'
  before_filter :load_basket
  
  private
  
  def load_basket
    session[:basket] ||= []
    @items = Product.find(session[:basket].uniq)
  end
end
