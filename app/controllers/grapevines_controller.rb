class GrapevinesController < ApplicationController

  def index
    @grapevines = Grapevine.all
  end

  def new
    @grapevine = Grapevine.new
  end

  def create
    @grapevine = Grapevine.new(params_grapevine)
    @grapevine.user = current_user
    @grapevine.save
  end

  # def edit
  # end

  private

  def params_grapevine
    params.require(:grapevine).permit(:grape_variety, :organic, :area, :parcel_price, :parcel_stock)
  end

end
