class CreateAffairFormInstanceAuditLogs < ActiveRecord::Migration
  def change
    create_table :affair_form_instance_audit_logs do |t|
      t.integer :instance_id
      t.integer :status
      t.string :remark
      t.integer :approver,references: :user

      t.timestamps
    end
  end
end
