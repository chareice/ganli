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
	before_save :form_to_hash
	
	default_scope{
		order("created_at desc")
	}
	scope :audit_by_user,->(user){
		where("audit_process like ? AND status = ?","%'#{user.id}'%",0).select{|instance|
			user.id.to_s == instance.audit_process[instance.logs.size]
		}
	}

	scope :get_waiting, ->{
		where("status = 0")
	}

	scope :get_pass, -> {
		where("status = 1")
	}

	scope :get_reject, -> {
		where("status = 2")
	}

	def is_pass?
		status !=0 and audit_process.size == logs.size
	end

	def pass_status
		if status == 0
			0 #等待审核
		else
			if audit_process.size == logs.size#所有人都审核了一遍
				if logs.last.status == 0
					1 #通过审核
				else
					2 #审核拒绝
				end
			else
				2 #审核拒绝
			end
		end
	end

	def last_approver
		if logs.size
			logs.last.approver.name
		end
	end

	def current_status_to_s
		case pass_status
		when 0
			"等待" + audit_user_name = User.find(audit_process[logs.size]).name + "审核"
		when 1
			"审核通过"
		when 2
			"审核拒绝"
		end
	end

	def audit_process_to_s
		audit_process.map.with_index{ |user,i| 
				c_user = User.find(user)
				"#{i+1}.#{c_user.name}(#{c_user.group.name})"
			}.join " -> "
	end

	def form_to_hash
		doc = Nokogiri::HTML(self.form)
		doc.css("td").each_with_index{|td,i| i.even? ? td['class'] = 'field' : td['class'] = 'value' }
		self.form = doc.serialize
	end

	def get_values
        doc = Nokogiri::HTML(self.form)
        doc.css(".value").map{|value| value.children.text.strip }
    end
end
