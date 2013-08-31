class CreateAdminMenuPermissions < ActiveRecord::Migration
  def change
    create_table :admin_menu_permissions do |t|
      t.integer :admin_menu_id
      t.integer :permission_id

      t.timestamps
    end
  end
end
