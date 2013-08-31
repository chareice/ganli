class CreateFriendlyLinks < ActiveRecord::Migration
  def change
    create_table :friendly_links do |t|
      t.string :name
      t.string :url
      t.integer :rank

      t.timestamps
    end
  end
end
