class RemoveAnnualColumnAndAddYearCountToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :years, :integer
    remove_column :bookings, :starting_year
    remove_column :bookings, :ending_year
  end
end
