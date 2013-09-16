class Admin::AffairFormInstancesController < Admin::BaseController
	def index

	end

	def list
		@instances = AffairFormInstance.all
	end

	def admin_view
		@instance = AffairFormInstance.find params[:id]
	end

	def show
		@instance = AffairFormInstance.find params[:id]
		if @instance.proposer != current_user
			access_forbidden
		end
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
		redirect_to action: :apply,controller: :affair_forms
	end

	def destroy
		@instance = AffairFormInstance.find params[:id]
		if @instance.proposer != current_user
			access_forbidden
		end
		@instance.destroy

		redirect_to propose_admin_affair_forms_path
	end
end
