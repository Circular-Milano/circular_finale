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
    @review = Review.new(review_params)
    @review.order = @order
    #@review.user = current_user
    if @review.save
      redirect_to dashboard_path#(params["review"]["id"])    #(@order)       #(params["review"]["id"])
    else
      render :new
    end
  end

  private

  def find_order
    @order = Order.find(params[:order_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
#


#  forse lo aggiungo dopo dentro il permit :   :reviewable_id, :reviewable_type)


  #def update
  #end

 # def edit
  #end

  #def destroy
  #  @review = Review.find(params[:id])
  #  @review.destroy
  #  redirect_to order_path(@review.order)
  #end

 # def index
  #end

  #def show
  #end
end

