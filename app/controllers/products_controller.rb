class ProductsController < ApplicationController
  # this default method renders: app/views/products/index.html.erb
  # controller methods maps to app/views/{products}/{method_name}
  def index
    # can just call Product.all here
    p = Product.new
    @products = p.all
    puts "#{@products}"
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end


  def create
    params = product_params
    puts "PARAMS #{params}"
    @product = Product.new(params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    # THESE TWO ARE THE SAME
    # params.expect( product: [ :name ] )
    params.expect({ product: [ :name ] })
  end
end
