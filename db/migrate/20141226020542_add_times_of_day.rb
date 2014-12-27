class AddTimesOfDay < ActiveRecord::Migration
  def change
    add_column :users, :tod_morning_early, :integer
    add_column :users, :tod_morning_middle, :integer
    add_column :users, :tod_morning_late, :integer
  end
end
