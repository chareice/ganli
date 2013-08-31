class ChangeNavigationIdTypeInPage < ActiveRecord::Migration
  def change
  	change_column :pages,:navigation_id,:integer
  end
end
