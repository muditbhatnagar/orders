class AddNameToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :dish, :string
    add_column :restaurants, :image, :string
    add_column :restaurants, :description, :string
    add_column :restaurants, :user_id, :integer
  end
end
