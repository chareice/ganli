class ChangeColumnMessagesStatusDefault < ActiveRecord::Migration
  def change
  	change_column :messages,:status,:string,:default => 0
  end
end
