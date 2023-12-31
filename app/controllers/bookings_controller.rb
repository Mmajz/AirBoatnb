class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat

    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.all
    @booking = Booking.new
  end


  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
