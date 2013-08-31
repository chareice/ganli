class AddStatusToAffairFormInstances < ActiveRecord::Migration
  def change
    add_column :affair_form_instances, :status, :integer,default: 0
  end
end
