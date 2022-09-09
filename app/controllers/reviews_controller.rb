class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to product_reviews_path(@review.product), success: 'レビューの投稿に成功しました'
    else
      redirect_to product_reviews_path(@review.product), danger: 'レビューの投稿に失敗しました'
    end
  end

  def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews.all
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:product_id, :name, :comment, :rate, tag_ids: [])
  end

end