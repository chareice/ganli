class CreateAffairForms < ActiveRecord::Migration
  def change
    create_table :affair_forms do |t|
      t.string :title
      t.text :form

      t.timestamps
    end
  end
end
