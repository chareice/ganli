class AddRankToNavigation < ActiveRecord::Migration
  def change
  	add_column :navigations,:rank,:integer
  end
end
