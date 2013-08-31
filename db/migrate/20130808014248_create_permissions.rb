class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :action
      t.string :describe

      t.timestamps
    end
  end
end
