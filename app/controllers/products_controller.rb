class ProductsController < ApplicationController
  make_resourceful do
    actions :index, :show
  end
  
  protected
  
  def current_objects
    @current_objects ||= Product.in_stock
  end
end
