class Admin::AffairFormInstanceAuditLogsController < Admin::BaseController
	before_action :audit_permission,only:[:new,:create]
	def index
		@instances = AffairFormInstance.audit_by_group current_user.group
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
		if @instance.audit_process.last == current_user.group.id.to_s or log.status == 1
			@instance.status = 1
			@instance.save
		end
		redirect_to action: :index
	end

	private
	def audit_permission
		render :file => "public/401.html",:layout => false,:status=>401 unless AffairFormInstance.find(params[:instance]).in?(AffairFormInstance.audit_by_group current_user.group)
	end

	def log_params
		params[:affair_form_instance_audit_log]
	end
end
