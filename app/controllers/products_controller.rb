class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = product.new(name: params[:product][:name])
    redirect_to products_path
  end

  def destroy
    product = product.find(params[:id])
    product.destroy
    redirect_to products_path
  end
end
