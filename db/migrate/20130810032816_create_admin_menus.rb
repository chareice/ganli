class CreateAdminMenus < ActiveRecord::Migration
  def change
    create_table :admin_menus do |t|
      t.string :name
      t.string :url
      t.integer :rank

      t.timestamps
    end
  end
end
