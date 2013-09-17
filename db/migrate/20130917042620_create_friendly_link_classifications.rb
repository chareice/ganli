class CreateFriendlyLinkClassifications < ActiveRecord::Migration
  def change
    create_table :friendly_link_classifications do |t|
      t.string :name
      t.timestamps
    end
    add_column :friendly_link_classifications,:rank,:integer,default: 0
  end
end
