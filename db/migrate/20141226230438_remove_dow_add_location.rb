class RemoveDowAddLocation < ActiveRecord::Migration
  def change
    remove_column :users, :dow_monday, :integer
    remove_column :users, :dow_tuesday, :integer
    remove_column :users, :dow_wednesday, :integer
    remove_column :users, :dow_thursday, :integer
    remove_column :users, :dow_friday, :integer
    remove_column :users, :dow_saturday, :integer
    remove_column :users, :dow_sunday, :integer

    add_column :users, :place_name, :string
    add_column :users, :place_address, :string
    add_column :users, :place_lon, :float
    add_column :users, :place_lat, :float
  end
end
