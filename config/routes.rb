ActionController::Routing::Routes.draw do |map|
  map.resources :products
  map.resources :orders
  map.resource :basket
end
