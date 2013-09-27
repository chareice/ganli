class ChangeDestroyStatusInMessages < ActiveRecord::Migration
  def change
  	change_column :messages, :destroy_status, :integer,defalut: 3
  end
end
