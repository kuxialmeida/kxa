class PagesController < ApplicationController
  def home
    @products = Product.take(8)
  end
end
