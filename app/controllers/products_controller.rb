class ProductsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @cart = session[:cart] || []
    #@products = Product.all
  end

  def add


    cart << params[:cart][:product]
    redirect_to root_path
  end
end
