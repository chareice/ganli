class AddStatusToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :status, :integer,default: 0
  end
end
