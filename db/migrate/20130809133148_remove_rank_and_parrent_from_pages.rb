class RemoveRankAndParrentFromPages < ActiveRecord::Migration
  def change
  	remove_column :pages,:parrent
  	remove_column :pages,:rank
  end
end
