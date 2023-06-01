class AddAdressToGrapevines < ActiveRecord::Migration[7.0]
  def change
    add_column :grapevines, :address, :string
  end
end
