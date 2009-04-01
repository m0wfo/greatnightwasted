class BasketsController < ApplicationController  
  def update
    if params[:id]
      product = Product.find(params[:id])
      session[:basket] << params[:id] if session[:basket].select {|b| b.to_i == product.id }.size < product.quantity
    elsif params[:empty]
      session[:basket] = nil
    end

    redirect_to :back
  end
end
