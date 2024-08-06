class ProductsController < ApplicationController

  def home
    @products = Product.all
  end

  def show
    @product = Product.find(parms[:id])
  end
end
