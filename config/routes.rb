Rails.application.routes.draw do
  get 'products', to: 'products#index'
  #get 'products' => 'products#index'
end
