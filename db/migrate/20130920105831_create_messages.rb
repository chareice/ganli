class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender
      t.integer :receiver
      t.text :content
      t.string :atachment
      t.integer :status

      t.timestamps
    end
  end
end
