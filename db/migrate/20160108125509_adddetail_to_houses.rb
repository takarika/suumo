class AdddetailToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :detail, :text
  end
end
