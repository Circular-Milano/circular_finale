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
  #def show
#    @order = Order.find(params[:id])
    #@review = Review.new
 # end

# GET /orders/new
  def new
    @order = Order.new
    @item = Item.find_by id: (params["item_id"])
  end


# GET /orders/:id    FUNZIONA
  def show
    @order = Order.find(params[:id])
    #@review = Review.new
  end


  def create
    @item = Item.find_by id: (params["item_id"])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.item_id = params[:item_id]
    @order.save
    redirect_to items_path
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

  def order_params
    params.require(:order).permit(:item, :user, :start_time, :end_time, :message)
  end
end


