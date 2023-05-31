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
    if @grapevine.photo.blank?
      # Définir la photo par défaut
      default_photo_path = Rails.root.join('app', 'assets', 'images', 'default-image-grappe.jpeg')
      @grapevine.photo.attach(io: File.open(default_photo_path), filename: 'default-image-grappe.jpeg', content_type: 'image/jpg')
    end

    @grapevine.save
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

    params.require(:grapevine).permit(:name, :grape_variety, :color, :organic, :area, :parcel_price, :parcel_stock, :photo)

  end

end
