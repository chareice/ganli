class CreateAffairFormInstances < ActiveRecord::Migration
  def change
    create_table :affair_form_instances do |t|
      t.string :title
      t.text :form
      t.integer :affair_form_id

      t.timestamps
    end
  end
end
