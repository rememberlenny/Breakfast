class AddTimesOfDay < ActiveRecord::Migration
  def change
    add_column :users, :tod_morning_early, :integer
    add_column :users, :tod_morning_middle, :integer
    add_column :users, :tod_morning_late, :integer
    add_column :users, :dow_monday, :integer
    add_column :users, :dow_tuesday, :integer
    add_column :users, :dow_wednesday, :integer
    add_column :users, :dow_thursday, :integer
    add_column :users, :dow_friday, :integer
    add_column :users, :dow_saturday, :integer
    add_column :users, :dow_sunday, :integer
  end
end
