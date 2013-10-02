module Bbs::BbsHelper
	def is_admin?(user = current_user)
		bbs_admin_permission_id = 19
		unless user
			false
		else
			user.has_permission? Permission.find(bbs_admin_permission_id)
		end
	end

	def is_trusted_user?(user = current_user)
		trusted_permission_id = 20
		unless user
			false
		else
			user.has_permission? Permission.find(trusted_permission_id)
		end
	end

	def unaudit_topices
		Topic.wait_audit.count
	end

	def unaudit_replies
		Reply.wait_audit.count
	end
end
