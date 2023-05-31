class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @grapevines = Grapevine.all
  end
  
  def dashboard
    @grapevines = current_user.grapevines
    @bookings = current_user.bookings
  end

  private

  def params_grapevine
    params.require(:grapevine).permit(:grape_variety, :organic, :area, :parcel_price, :parcel_stock)
  end

  def booking_params
    params.require(:booking).permit(:parcel_quantity, :starting_year, :ending_year)
  end
end
