class AddRentalPeriodToGrapevine < ActiveRecord::Migration[7.0]
  def change
    add_column :grapevines, :rental_period, :integer
  end
end
