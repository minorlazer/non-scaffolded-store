Rails.application.routes.draw do
  # Create
  get  'products/new' => 'products#new' # Show a new product form
  post 'products'     => 'products#create' #create the new product

  # Read
  get 'products', to: 'products#index'
  #get 'products' => 'products#index'
  get 'products/:id' => 'products#show', as: 'product' #show a member of products (id)


  # Update
  # Destroy
end
