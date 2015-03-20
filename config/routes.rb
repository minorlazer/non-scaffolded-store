Rails.application.routes.draw do
  # HTTP Verbs
  # Get
  # Post
  # Patch
  # Delete

  root to: 'products#index'

  # Create
  get  'products/new' => 'products#new', as: 'new_product' # Show a new product form
  post 'products'     => 'products#create' #create the new product

  # Read
  get 'products', to: 'products#index' #get 'products' => 'products#index'
  get 'products/:id' => 'products#show', as: 'product', id: /\d+/ #show a member of products (id)

  # Update
  get 'products/:id/edit' => 'products#edit', as: 'edit_product', id: /\d+/
  patch 'products/:id' => 'products#update', id: /\d+/

  # Destroy
  delete 'products/:id' => 'products#destroy', as: 'destroy_product', id: /\d+/

  # The following single line would build all of our REST-ful routes
  # resources :products, constraints: { id: /\d+/}
end
