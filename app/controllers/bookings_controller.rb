class BookingsController < ApplicationController
  # before_action :set_booking, only: :destroy
   before_action :grapevine, only: [:new, :create]

  def new
    # @grapevine = Grapevine.find(params[:grapevine_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.grapevine = @grapevine
    @booking.status = "Merci pour votre geste !"
    @booking.save
    if @booking.save!
      @grapevine.parcel_stock = @grapevine.parcel_stock - @booking.parcel_quantity
      @grapevine.save
      redirect_to user_session_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:parcel_quantity, :years)
  end

  def grapevine
  @grapevine = Grapevine.find(params[:grapevine_id])
  end
end
