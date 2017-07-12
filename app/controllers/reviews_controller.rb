class ReviewsController < ApplicationController
  before_action :find_review, only: [:show]

  def index
    @review = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render :new
    end
  end

  def show
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
