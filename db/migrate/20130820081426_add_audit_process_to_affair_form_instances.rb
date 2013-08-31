class AddAuditProcessToAffairFormInstances < ActiveRecord::Migration
  def change
    add_column :affair_form_instances, :audit_process, :string
  end
end
