class CreateGuestMessages < ActiveRecord::Migration
  def change
    create_table :guest_messages do |t|
      t.integer :status
      t.string :nickname
      t.text :content
      t.string :ip

      t.timestamps
    end
  end
end
