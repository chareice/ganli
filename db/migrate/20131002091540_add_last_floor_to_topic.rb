class AddLastFloorToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :last_floor, :integer,default: 0
  end
end
