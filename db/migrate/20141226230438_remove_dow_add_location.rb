class RemoveDowAddLocation < ActiveRecord::Migration
  def change
    add_column :users, :place_name, :string
    add_column :users, :place_address, :string
    add_column :users, :place_lon, :float
    add_column :users, :place_lat, :float
  end
end
