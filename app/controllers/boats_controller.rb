class BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
  end


  private

  def boat_params
    params.require(:boat).permit(:location, :price, :description, :title, :user_id)
  end
end
