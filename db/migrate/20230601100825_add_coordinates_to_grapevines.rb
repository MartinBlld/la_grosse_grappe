class AddCoordinatesToGrapevines < ActiveRecord::Migration[7.0]
  def change
    add_column :grapevines, :latitude, :float
    add_column :grapevines, :longitude, :float
  end
end
