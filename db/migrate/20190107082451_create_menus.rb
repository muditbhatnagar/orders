class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.integer :price
      t.integer :quantity
      t.string :name
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
