class ApplicationController < ActionController::Base

  before_action :set_language
  def set_language
    if !session[:language]
      session[:language] = "en"
    end
  end

  def products
    @products = Search.new(params[:query]).perform
    render template: 'search_results'
  end

end
