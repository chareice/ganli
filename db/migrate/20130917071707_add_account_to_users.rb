class AddAccountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account, :string,limit: 16
  end
end
