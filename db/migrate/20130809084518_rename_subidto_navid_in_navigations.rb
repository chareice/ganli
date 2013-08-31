class RenameSubidtoNavidInNavigations < ActiveRecord::Migration
  def change
  	rename_column :navigations,:sub_id,:nav_id
  end
end
