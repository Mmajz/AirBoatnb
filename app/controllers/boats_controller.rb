class BoatsController < ApplicationController

  def index
    @boats = Boat.all
    @boat = Boat.new
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {boat: boat})
      }
    end
  end
  
  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
  end


  private

  def boat_params
    params.require(:boat).permit(:location, :price, :description, :title, :user_id, :photo)
  end
end
