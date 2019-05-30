class TrucksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :is_user?, except: [:index, :show]
  before_action :set_truck, only: [:show, :edit, :update, :destroy]


  def index
    @trucks = Truck.all
  end

  def show

  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    @truck.user = current_user

    if @truck.save
      redirect_to articles_path, notice: 'Truck was successfully created.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @truck.update(truck_params)
      redirect_to articles_path, notice: 'Truck was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @truck.destroy
    redirect_to trucks_url, notice: 'Truck was successfully destroyed.'
  end

  private

  def set_truck
    @truck = Truck.find(params[:id])
  end


  def truck_params
    params.require(:truck).permit(:user_id, :truck_type_id, :truck_merchandise_id, :truck_load_id, :coverage_id, :city_id, :gps, :available_now, :image, :latitude, :longitude, :price_per_km)
  end

  def is_user?
    unless current_user
      flash[:alert] = "You don't have permissions"
      redirect_to trucks_path
    end
  end

end
