class AddMoldToLunches < ActiveRecord::Migration
  def change
    add_column :lunches, :mold, :string
  end
end
