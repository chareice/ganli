class ChangeDefaultColumnTypeInGuestMessagesStatus < ActiveRecord::Migration
  def change
  	change_column_default :guest_messages,:status,0
  end
end
