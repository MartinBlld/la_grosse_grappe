class GrapevinesController < ApplicationController

  def index
    @grapevines = Grapevine.all
  end

  def new
    @grapevine = Grapevine.new
  end

  def show
    @grapevine = Grapevine.find(params[:id])
  end

  def create
    @grapevine = Grapevine.new(params_grapevine)
    @grapevine.user = current_user
    if @grapevine.save

      redirect_to grapevine_path(@grapevine)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @grapevine = Grapevine.find(params)
  end

  def update
    @grapevine = Grapevine.find(params)
    @grapevine.update(params_grapevine)
    redirect_to grapevine_path(@grapevine)
  end


  private

  def params_grapevine
    params.require(:grapevine).permit(:name, :grape_variety, :organic, :area, :parcel_price, :parcel_stock)
  end

end
