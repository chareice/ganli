class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.boolean :isModel
      t.string :model
      t.text :context

      t.timestamps
    end
  end
end
