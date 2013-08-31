class RenameContextToPages < ActiveRecord::Migration
  def change
  	rename_column :pages,:context,:content
  end
end
