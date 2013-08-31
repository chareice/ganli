class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :path
      t.integer :status
      t.integer :uploader

      t.timestamps
    end
  end
end
