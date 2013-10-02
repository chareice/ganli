class AddFloorToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :floor, :integer
  end
end
