class AddStatusToTopices < ActiveRecord::Migration
  def change
    add_column :topics, :status, :integer,default: 0
  end
end
