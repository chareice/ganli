class CreateLeftNavs < ActiveRecord::Migration
  def change
    create_table :left_navs do |t|
      t.string :name
      t.string :thumb
      t.string :url
      t.integer :rank,default: 0

      t.timestamps
    end
  end
end
