class AddAuditProcessToAffairForms < ActiveRecord::Migration
  def change
    add_column :affair_forms, :audit_process, :string
  end
end
