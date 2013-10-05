class AddReadCountToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :read_count, :integer,default: 0
  end
end
