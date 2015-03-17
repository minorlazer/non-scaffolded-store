class ProductsController < ApplicationController
  def index
    # Use the Product model to load all products
    @products = Product.all
  end
  # The associated view app/views/products/index.html.erb is auto-loaded

  def show
    @product = Product.find(params[:id])
  end
  # The associated view app/views/products/show.html.erb is auto-loaded

  def new
    @product = Product.new
  end
  # auto loads app/views/products/new.html.erb

  def create
    @product = Product.new(whitelisted_params)
    if (@product.save)
      redirect_to @product # redirect to the show action for this product
    else
      render text: @product.errors.inspect
    end
  end

  # The view gets access to all the action's instance variables

  private
  def whitelisted_params
    params.require(:product).permit(:name, :description, :price)
  end
end
