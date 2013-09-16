class AddThumbToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :thumb, :string
  end
end
