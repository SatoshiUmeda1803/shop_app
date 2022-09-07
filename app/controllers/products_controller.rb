class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @manufacturer_products = @product.manufacturer.products.where.not(id: params[:id])
  end
end
