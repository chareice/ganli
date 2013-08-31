class RemoveisModelFromPages < ActiveRecord::Migration
  def change
  	remove_column :pages,:isModel,:integer
  end
end
