class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat

    @booking.save
  end

  def show
    bookings = Booking.all
  end


  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
