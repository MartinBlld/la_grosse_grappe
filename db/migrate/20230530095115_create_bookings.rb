class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :parcel_quantity
      t.string :strating_year
      t.string :ending_year
      t.string :status
      t.references :grapevine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
