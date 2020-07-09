class ItemsController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index, :show]


# GET /items
   def index
    @items = Item.all
   end

# GET /items/:id
  def show
    @item = Item.find(params[:id])
    #@reviews = Review.all
    @order = Order.new
  end

  # GET /items/new
  def new
    @item = Item.new
  end


  def top
    @items = Item.where(rating: 5)
  end


  def category
    @item = Item.find(params[:id])
    @category_name = @item.category
   end

  # POST /items
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.save
    redirect_to items_path(@item)
  end

  def edit
    @item = Item.find(params[:id])
  end



# PATCH/PUT /items/:id
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item)
  end

# DELETE /items/:id
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category)
  end
end


# saranno da mettere dentro nel permit :rating :start_time, :end_time, :price, :photo
