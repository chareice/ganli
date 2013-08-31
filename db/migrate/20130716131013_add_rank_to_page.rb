class AddRankToPage < ActiveRecord::Migration
  def change
    add_column :pages, :rank, :integer
  end
end
