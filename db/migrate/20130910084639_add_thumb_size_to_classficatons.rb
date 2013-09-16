class AddThumbSizeToClassficatons < ActiveRecord::Migration
  def change
    add_column :classifications, :thumb_size, :string
  end
end
