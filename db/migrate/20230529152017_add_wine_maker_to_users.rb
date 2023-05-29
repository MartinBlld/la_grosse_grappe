class AddWineMakerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :whinemaker, :boolean
  end
end
