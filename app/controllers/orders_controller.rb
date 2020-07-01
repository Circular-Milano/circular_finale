class OrdersController < ApplicationController


#  GET /orders
  def index
    @orders = Order.all
  end


# GET /orders/new
  #def new
  #  @item = Item.find(params[:item_id])
  #  @order = Order.new
  #end




#  POST /orders
 # def create
  #  @item = Item.find(params[:item_id])
  #  @order = Order.new(order_params)
   # @order.user = current_user
 #   @order.item_id = params[:item_id]
  #  @order.save
  #  redirect_to order_path
 # end


 # index no longer necessary - being moved to dashboard viewer
  # def index
  #   @reservations = Reservation.where(user_id: current_user.id)
  # end

# GET /orders/:id    FUNZIONA
  def show
    @order = Order.find(params[:id])
    #@review = Review.new
  end

# GET /orders/new
  def new
    @item = Item.find(params[:item_id])
    @order = Order.new
  end

  def create
    @item = Item.find(params[:item_id])
    @order = Order.new(order_params)
 #   @reservation.user = current_user
 #   @reservation.mask_id = params[:mask_id]
    @order.save
    redirect_to item_path(@item)
  end

 # def update
 #   @reservation = Reservation.find(params[:id])
 #   @reservation.update(deleted: true)
 #   redirect_to pages_reservations_owners_path
 # end

 # def confirm
 #   @reservation = Reservation.find(params[:id])
 #   @reservation.update(confirmed: true)
 #   redirect_to pages_reservations_owners_path
 # end

  #def destroy
    # @reservation = Reservation.find(params[:id])
    # @reservation.update(deleted: true)
    # redirect_to pages_reservations_path
  #end

  private

  def reservation_params
    params.require(:reservation).permit(:item, :user)
  end
end


