module Admin::BaseHelper
	def current_permission
		Permission.find_by_action(permission_action).first
	end

	def header_url
		menu_permission = AdminMenuPermission.where(permission_id: current_permission).take
		if menu_permission.url
			menu_permission.url
		else
			s = current_permission.menu_link
			url_for controller: s[0],action: s[1]
		end				
	end

	def permission_name
		current_permission.name
	end
end
