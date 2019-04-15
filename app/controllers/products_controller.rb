class ProductsController < ApplicationController

  def index
  #  @products = Search.new(params[:query]).perform
    @products = Product.all
  end

  def show
    product = Product.find(params[:id])
    @product = ProductDecorator.new(product).to_product
  end

end
