class RemoveActionFromPermissions < ActiveRecord::Migration
  def change
  	remove_column :permissions,:action
  end
end
