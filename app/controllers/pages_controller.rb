class PagesController < ApplicationController
  def home
    @products = Product.take(12)
  end
end
