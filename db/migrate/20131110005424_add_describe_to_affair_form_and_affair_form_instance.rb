class AddDescribeToAffairFormAndAffairFormInstance < ActiveRecord::Migration
  def change
  	add_column :affair_forms, :describe, :string
  	add_column :affair_form_instances, :describe, :string
  end
end
