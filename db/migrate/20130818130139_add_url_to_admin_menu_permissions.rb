class AddUrlToAdminMenuPermissions < ActiveRecord::Migration
  def change
  	add_column :admin_menu_permissions,:url,:string 
  end
end
