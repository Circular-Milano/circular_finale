class ReviewsController < ApplicationController
  before_action :find_order

  def new
    @review = Review.new
    #if (current_user.items.find_by id: params['item_id']).nil?
      # customer
      #@review.reviewable = Item.find(params['item_id'])
    #else
      # owner
      #@review.reviewable = Order.find(params['id'])
    #end
  end

  def create
    #@review = Review.new(review_params)
    #@review.user = current_user
    #@review.save
    #redirect_to order_path(params["review"]["id"])
  end

  private

  def find_order
    @order = Order.find(params[:order_id])
  end

  def review_params
    #params.require(:review).permit(:content, :rating, :reviewable_id, :reviewable_type)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end

