class TrucksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :is_user?, except: [:index, :show]

  def index
    @trucks = Truck.all
  end

  def new
      @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    respond_to do |format|
      if @truck.save
        format.html { redirect_to @truck, notice: 'Truck was successfully created.' }
        format.json { render :show, status: :created, location: @truck }

      else
        format.html { render :new }
        format.json { render json: @truck.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_params
      params.require(:truck).permit(:gps, :available_now,:image, :latitude, :longitude,
        :price_per_km, :user_id, :truck_type_id, :truck_merchandise_id,:truck_load_id,
        :coverage_id, :city_id )
    end

    def is_user?
      unless current_user
        flash[:alert] = "You don't have permissions"
        redirect_to trucks_path
      end
    end
end
