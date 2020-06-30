class ItemsController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index, :show]


# GET /items
   def index
    #real_parameters = params[:search]
    @items = Item.all
    #@markers = []
    #return if real_parameters.nil?

    #@location = real_parameters[:location].downcase.capitalize unless real_parameters[:location].nil? || real_parameters[:location] == ""

    #if !real_parameters[:start_time].nil? && real_parameters[:start_time] != ""
    #  @full_time = real_parameters[:start_time]
    #  @start_time = Date.parse(@full_time.chars.first(10).join)
     # @end_time = Date.parse(@full_time.chars.last(10).join)
    #elsif !@range_time.nil?
   #   @start_time = Date.parse(@range_time.chars.first(10).join)
   #   @end_time = Date.parse(@range_time.chars.last(10).join)
  #  end

    #@size = real_parameters[:size] unless real_parameters[:size].nil? || real_parameters[:size] == ""

    #if real_parameters[:start_time].present? && real_parameters[:location].present? && real_parameters[:size].present?
    #  @items = Item.joins(:user).where('users.address like ?', "%#{@location}%").where(['start_time < ? AND end_time > ?', @start_time, @end_time]).where(['size = ?', @size])
#
    #elsif real_parameters[:start_time].present? && real_parameters[:location].present?
    #  @items = Item.joins(:user).where('users.address like ?', "%#{@location}%").where(['start_time < ? AND end_time > ?', @start_time, @end_time])

    #elsif real_parameters[:location].present? && real_parameters[:size].present?
    #  @items = Item.joins(:user).where('users.address like ?', "%#{@location}%").where(['size = ?', @size])

   # elsif real_parameters[:start_time].present? && real_parameters[:size].present?
   #   @items = Item.where(['start_time < ? AND end_time > ?', @start_time, @end_time]).where(['size = ?', @size])

   # elsif real_parameters[:size].present?
   #   @items = Item.where(['size = ?', @size])

   # elsif real_parameters[:start_time].present?
   #   @items = Item.where(['start_time < ? AND end_time > ?', @start_time, @end_time])

   # elsif real_parameters[:location].present?
   #   @items = Item.joins(:user).where('users.address like ?', "%#{@location}%")

   # else
   #   @items = Item.all
  #  end

  #  users = @items.map { |item| item.user }.uniq
  #  unless users.nil?
   #   @users = User.where(id: users.map(&:id)).geocoded
   #   @markers = @users.map do |user|
   #     {
     #     lat: user.latitude,
     #     lng: user.longitude
          # infoWindow: render_to_string(partial: "info_window", locals: { user: user })
  #      }
#      end
#    end
  end


  # GET /items/new
  def new
    @item = Item.new
  end


  #def top
  #end


  # POST /items
  def create
    item = Item.new(item_params)
    item.user = current_user
    item.save
    redirect_to item_path(item)
  end

  def edit
    @item = Item.find(params[:id])
  end

# GET /items/:id
  def show
    @item = Item.find(params[:id])
    #@reviews = Review.all
    #@order = Order.new
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


# saranno da mettere dentro nel permit :start_time, :end_time, :price, :photo
