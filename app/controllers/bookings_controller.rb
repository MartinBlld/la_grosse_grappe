class BookingsController < ApplicationController
  # before_action :set_booking, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.grapevine = @grapevine
    @booking.status = "Merci pour votre geste ! "
    if @booking.save
      @grapevine.parcel_stock = @grapevine.parcel_stock - @booking.parcel_quantity
      @grapevine.save
      redirect_to booking_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:parcel_quantity, :starting_year, :ending_year, :status)
  end

  def set_list
    @booking = Booking.find(params[:booking_id])
  end
end
