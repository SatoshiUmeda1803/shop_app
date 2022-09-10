class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def show
    @product = Product.find(params[:id])
    @manufacturer_products = @product.manufacturer.products.where.not(id: params[:id])
    @number_of_reviews = @product.reviews.count
  end
end
