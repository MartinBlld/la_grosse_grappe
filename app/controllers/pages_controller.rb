class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def dashboard
    @grapevines = Grapevine.all
  end

  private

  def params_grapevine
    params.require(:grapevine).permit(:grape_variety, :organic, :area, :parcel_price, :parcel_stock)
  end

  def booking_params
    params.require(:booking).permit(:parcel_quantity, :starting_year, :ending_year)
  end
end
