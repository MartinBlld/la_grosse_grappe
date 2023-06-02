class GrapevinesController < ApplicationController

  def index
    @grapevines = Grapevine.all
  end

  def new
    @grapevine = Grapevine.new
  end

  def show
    @grapevine = Grapevine.find(params[:id])
    @marker = [{ lat: @grapevine.latitude, lng: @grapevine.longitude }]
  end

  def create
    @grapevine = Grapevine.new(params_grapevine)
    @grapevine.user = current_user
    if @grapevine.photo.blank?
      # Définir la photo par défaut
      default_photo_path = Rails.root.join('app', 'assets', 'images', 'default-image-grappe.jpg')
      @grapevine.photo.attach(io: File.open(default_photo_path), filename: 'default-image-grappe.jpg', content_type: 'image/jpg')
    end

    @grapevine.save
    if @grapevine.save

      redirect_to grapevine_path(@grapevine)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @grapevine = Grapevine.find(params[:id])
  end

  def update
    @grapevine = Grapevine.find(params[:id])
    if @grapevine.photo.blank?
      # Définir la photo par défaut
      default_photo_path = Rails.root.join('app', 'assets', 'images', 'default-image-grappe.jpg')
      @grapevine.photo.attach(io: File.open(default_photo_path), filename: 'default-image-grappe.jpg', content_type: 'image/jpg')
    end
    @grapevine.update(params_grapevine)
    redirect_to grapevine_path(@grapevine)
  end

  def destroy

    @grapevine = Grapevine.find(params[:id])
    @grapevine.destroy
    redirect_to dashboard_path
  end

  private

  def params_grapevine
    params.require(:grapevine).permit(:name, :grape_variety, :color, :organic, :area, :parcel_price, :parcel_stock,
                                      :photo, :description, :short_description, :rental_period, :latitude, :longitude, :address)
  end
end
