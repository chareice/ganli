# == Schema Information
#
# Table name: affair_form_instance_audit_logs
#
#  id          :integer          not null, primary key
#  instance_id :integer
#  status      :integer
#  remark      :string(255)
#  approver    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class AffairFormInstanceAuditLog < ActiveRecord::Base
	belongs_to :instance,foreign_key: "instance_id",class_name: "AffairFormInstance"
	belongs_to :approver,foreign_key: "approver",class_name: "User"
end
