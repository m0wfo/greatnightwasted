class ProductsController < ApplicationController
  make_resourceful do
    actions :index, :show
  end
end
