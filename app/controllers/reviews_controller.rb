class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    scores =[]
    scores.push( @review.price_rate ,@review.design_rate , @review.quality_rate)
    @review.rate = scores.sum.fdiv(scores.length).round(1)
    if @review.save
      product = Product.find(params[:product_id])
      product.rate = product.avg_score
      product.review_count = product.count_reviews
      product.save
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
    params.require(:review).permit(:product_id, :name, :comment, :price_rate, :design_rate, :quality_rate,  tag_ids: [])
  end

end