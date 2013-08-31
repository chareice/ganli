class CreateNavigations < ActiveRecord::Migration
  def change
    create_table :navigations do |t|
      t.string :name
      t.string :url
      t.integer :sub_id

      t.timestamps
    end
  end
end
