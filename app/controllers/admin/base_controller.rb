class Admin::BaseController < ApplicationController
	layout "admin"
	before_action :require_login,:authenticate

	private
	def require_login
		unless current_user
			session[:request_page] = request.original_url
			redirect_to(login_path)
		end
	end
	def authenticate
		access_forbidden unless current_user.is_allow_action?("#{controller_path}##{action_name}")
	end
end