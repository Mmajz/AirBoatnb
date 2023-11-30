class DashboardController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings
    @boat = Boat.new
  end
end
