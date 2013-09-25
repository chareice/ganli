class Admin::AffairFormInstanceAuditLogsController < Admin::BaseController
	before_action :audit_permission,only:[:new,:create]
	def index
		require 'will_paginate/array'
		@instances = AffairFormInstance.audit_by_user(current_user).paginate(:page=>params[:page],per_page: 10)
	end

	def show
		render json:params
	end

	def new
		@instance = AffairFormInstance.find params[:instance]
		@log = AffairFormInstanceAuditLog.new
	end

	def create
		@instance = AffairFormInstance.find params[:instance]
		log = @instance.logs.build do |log|
			log.approver = current_user
			log.status = log_params[:status]
			log.remark = log_params[:remark]
			
			log.save
		end
		if @instance.audit_process.last == current_user.id.to_s or log.status == 1
			@instance.status = "1"
			@instance.save
		end
		flash[:notice] = "审核成功"
		redirect_to action: :index
	end

	private
	def audit_permission
		render :file => "public/401.html",:layout => false,:status=>401 unless AffairFormInstance.find(params[:instance]).in?(AffairFormInstance.audit_by_user current_user)
	end

	def log_params
		params[:affair_form_instance_audit_log]
	end
end
