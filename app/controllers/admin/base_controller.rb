class Admin::BaseController < ApplicationController
	layout "admin"
	before_action :require_login,:authenticate

	def flash_error(target)
		flash[:error] = target.errors.full_messages.join(',')
	end

	def flash_notice
		if action_name == 'update'
			flash[:notice] = "修改成功"
		elsif action_name == 'create'
			flash[:notice] = "添加成功"
		elsif action_name == 'destroy'
			flash[:notice] = "删除成功"
		end
	end
end