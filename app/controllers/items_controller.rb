class ItemsController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index, :show]


# GET /items
    def index
      if params[:query].present?
        sql_query = "name ILIKE :query OR description ILIKE :query"
        @items = Item.where(sql_query, query: "%#{params[:query]}%").geocoded
      else
        @items = Item.geocoded
      end
      @markers = @items.map do |item|
        {
          lat: item.latitude,
          lng: item.longitude
        }
      end
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
    redirect_to items_path
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
    params.require(:item).permit(:name, :description, :category, :photo, :location)
  end
end


