class ChangeAccountLengthInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :account, :string
  end
end
