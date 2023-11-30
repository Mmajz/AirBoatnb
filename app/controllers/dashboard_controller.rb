class DashboardController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings
    @boat = Boat.new
  
    sorted_bookings = @bookings.sort_by { |booking| booking.start_date }
    @next_booking = sorted_bookings.find { |booking| booking.start_date > Date.today }
  end
end
