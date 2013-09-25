class CreateAnnouncementViewers < ActiveRecord::Migration
  def change
    create_table :announcement_viewers do |t|
      t.integer :announcement_id
      t.integer :viewer

      t.timestamps
    end
  end
end
