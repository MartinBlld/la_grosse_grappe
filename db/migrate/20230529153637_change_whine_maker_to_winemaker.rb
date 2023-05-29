class ChangeWhineMakerToWinemaker < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :whinemaker, :winemaker
  end
end
