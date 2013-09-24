class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :content
      t.integer :author

      t.timestamps
    end
    add_column :announcements,:status,:integer,default: 0
  end
end
