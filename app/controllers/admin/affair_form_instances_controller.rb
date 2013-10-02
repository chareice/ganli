class Admin::AffairFormInstancesController < Admin::BaseController
	def index

	end

	def list
		if !!params[:start_date] and !!params[:end_date]
			begin
				@start_date = "#{params[:start_date][:year]}-#{params[:start_date][:month]}-#{params[:start_date][:day]}".to_date
				@end_date = "#{params[:end_date][:year]}-#{params[:end_date][:month]}-#{params[:end_date][:day]}".to_date
				@instances = AffairFormInstance.where(:created_at => @start_date..@end_date.tomorrow).paginate(:page=>params[:page],per_page: 10)
			rescue
				flash[:error] = "时间格式不正确"
				redirect_to list_admin_affair_form_instances_path
				@instances = []
			end
		else
			@start_date = @end_date = Time.now
			@instances = AffairFormInstance.all.paginate(:page=>params[:page],per_page: 10)
		end
	end

	def admin_view
		@instance = AffairFormInstance.find params[:id]
		session[:return_to] = list_admin_affair_form_instances_path
	end

	def show
		@instance = AffairFormInstance.find params[:id]
		if @instance.proposer != current_user
			access_forbidden
		end
		session[:return_to] = propose_admin_affair_forms_path
	end

	def new
		@affair_form = AffairForm.find params[:affair_form_id]
		@affair_form_instance = AffairFormInstance.new
		@affair_form_instance.title = @affair_form.title
		@affair_form_instance.form = @affair_form.form
		@affair_form_instance.audit_process = @affair_form.audit_process
	end
	def create
		@affair_form = AffairForm.find params[:affair_form_id]
		@affair_form_instance = AffairFormInstance.new

		@affair_form_instance.title = @affair_form.title
		@affair_form_instance.affair_form = @affair_form
		@affair_form_instance.form = params[:affair_form_instance][:form]
		@affair_form_instance.audit_process = @affair_form.audit_process
		@affair_form_instance.proposer = current_user

		@affair_form_instance.save
		flash[:notice] = "申请成功 等待审核"
		redirect_to action: :apply,controller: :affair_forms
	end

	def destroy
		@instance = AffairFormInstance.find params[:id]
		if @instance.proposer != current_user
			access_forbidden
		end
		@instance.destroy

		redirect_to session[:return_to]
	end
end
