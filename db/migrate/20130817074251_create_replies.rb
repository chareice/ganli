class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :content

      t.timestamps
    end
  end
end
