class AddTitleToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :title, :string
  end
end
