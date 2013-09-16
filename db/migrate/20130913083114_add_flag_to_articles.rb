class AddFlagToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :flag, :string
  end
end
