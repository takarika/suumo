class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string  :name
      t.string  :image
      t.text    :detail
      t.integer :houses, :user_id
      t.integer :favorites_count, null: false, defult: 0

      t.timestamps null: false
    end
  end
end
