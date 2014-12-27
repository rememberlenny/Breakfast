class AddInterestedTopics < ActiveRecord::Migration
  def change
    add_column :users, :topics, :string
  end
end
