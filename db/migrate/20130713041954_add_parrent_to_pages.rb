class AddParrentToPages < ActiveRecord::Migration
  def change
    add_column :pages, :parrent, :integer 
  end
end
