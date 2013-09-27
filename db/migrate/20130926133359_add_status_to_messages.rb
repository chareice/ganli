class AddStatusToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :destroy_status, :integer,defalut: 6
  end
end
