class OrdersController < ApplicationController
  make_resourceful do
    actions :new, :show
  end
  
  def create
    @order = Order.new(params[:order])
    session[:basket].each {|item| @order.products << Product.find(item) }
    if @order.save
      flash[:notice] = "Cheers!"
      session[:basket] = nil
      redirect_to order_path(@order)
    else
      flash[:notice] = "Check them details again."
      render :action => "new"
    end
  end
end
