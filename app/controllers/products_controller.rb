class ProductsController < ApplicationController
  # this default method renders: app/views/products/index.html.erb
  def index
    # can just call Product.all here
    p = Product.new
    @products = p.all
    puts "#{@products}"
  end
end
