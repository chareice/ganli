class CreatePermissionActions < ActiveRecord::Migration
  def change
    create_table :permission_actions do |t|
      t.integer :permission_id
      t.string :action

      t.timestamps
    end
  end
end
