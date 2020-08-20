class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

    # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end


  # POST /restaurante
   def create
    @restaurant = Restaurant.new
    if @restaurant
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end


  # GET /restaurants/1

def show
  end

  # GET /restaurants/1/edit
  def edit
  end



  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
    end
end
