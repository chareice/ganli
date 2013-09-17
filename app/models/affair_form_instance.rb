# == Schema Information
#
# Table name: affair_form_instances
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  form           :text
#  affair_form_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#  audit_process  :string(255)
#  status         :integer          default(0)
#  proposer       :integer
#

class AffairFormInstance < ActiveRecord::Base
	serialize :audit_process
	belongs_to :affair_form
	belongs_to :proposer,foreign_key:"proposer",class_name:"User"
	has_many :logs,foreign_key: "instance_id",class_name:"AffairFormInstanceAuditLog",dependent: :destroy

	default_scope order: "created_at desc"
	scope :audit_by_group,->(group){
		where("audit_process like ? AND status = ?","%'#{group.id}'%",0).select{|instance|
			group.id.to_s == instance.audit_process[instance.logs.size]
		}
	}

	def current_status_to_s
		if status == 0
			"等待" + audit_group_name = Group.find(audit_process[logs.size]).name + "审核"
		else
			if audit_process.size == logs.size
				"审核通过"
			else
				"审核拒绝"	
			end
		end
	end

	def audit_process_to_s
		audit_process.map.with_index{|group,i| "#{i+1}.#{Group.find(group).name}"}.join " -> "
	end
end
