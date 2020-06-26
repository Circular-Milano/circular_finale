class OrdersController < ApplicationController
    def new
#     @order = Order.find(params[:item_id])
     @order = Order.new
    end

   def create
#     @order = Order.new(order_params)
     @order.user = current_user
#     @order.item_id = params[:item_id]
#     @order.save
     redirect_to show_order_path
   end

   def update
#     @order = Order.find(params[:id])
#    @order.update(deleted: true)
#     redirect_to pages_orders_owners_path
   end

   def destroy
#     # @order = Order.find(params[:id])
#     # @order.update(deleted: true)
      redirect_to show_orders_path
   end

   def show
#     @order = Order.find(params[:id])
     @review = Review.new
   end

   def confirm
#     @order = Order.find(params[:id])
#     @order.update(confirmed: true)
#     redirect_to pages_orders_owners_path
   end

   def edit
   end

   def index
   end

   private

   def order_params
#     params.require(:order).permit(:item, :user, :start_time, :end_time)
   end
end


