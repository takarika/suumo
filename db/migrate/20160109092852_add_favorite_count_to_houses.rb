class AddFavoriteCountToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :favorites_count, :integer, null: false, defult: 0
  end
end
