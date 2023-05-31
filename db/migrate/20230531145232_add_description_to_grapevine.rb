class AddDescriptionToGrapevine < ActiveRecord::Migration[7.0]
  def change
    add_column :grapevines, :description, :text
    add_column :grapevines, :short_description, :text
  end
end
