class AddAuthorToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author, :integer
  end
end
