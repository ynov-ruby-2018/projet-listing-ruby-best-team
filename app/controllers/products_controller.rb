class ProductsController < ApplicationController

  def index
    @products = Search.new(params[:searchField]).perform
  end
end
