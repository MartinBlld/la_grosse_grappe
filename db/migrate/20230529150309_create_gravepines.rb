class CreateGravepines < ActiveRecord::Migration[7.0]
  def change
    create_table :gravepines do |t|
      t.string :grape_variety
      t.boolean :organic
      t.string :color
      t.string :area
      t.integer :parcel_price
      t.integer :parcel_stock
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
