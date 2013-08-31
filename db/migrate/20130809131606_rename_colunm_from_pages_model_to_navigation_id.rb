class RenameColunmFromPagesModelToNavigationId < ActiveRecord::Migration
  def change
  	rename_column :pages,:model,:navigation_id
  end
end
