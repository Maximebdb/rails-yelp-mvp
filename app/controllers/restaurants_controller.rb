class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show # GET /restaurants/:id
  end

  def new # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def create # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit # GET /restaurants/:id/edit
  end

  def update # PATCH /restaurants/:id
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy # DELETE /restaurants/:id
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :category, :phone_number)
  end

  def set_restaurant
      @restaurant = Restaurant.find(params[:id])
  end
end

