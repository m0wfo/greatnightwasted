class BasketsController < ApplicationController  
  def update
    if params[:id]
      session[:basket] ||= []
      session[:basket] << params[:id]
    elsif params[:empty]
      session[:basket] = nil
    end

    redirect_to :back
  end
end
