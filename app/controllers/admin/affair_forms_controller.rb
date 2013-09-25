class Admin::AffairFormsController < Admin::BaseController
	def index
		@affair_forms = AffairForm.all
	end

	def apply
		@affair_forms = AffairForm.all
	end

	def propose
		@instances = AffairFormInstance.where(proposer:current_user.id).paginate(:page=>params[:page],per_page: 10)
	end
	
	def new
		@affair_form = AffairForm.new
	end

	def create
		@affair_form = AffairForm.create affair_from_params
		@affair_form.audit_process = params[:affair_form][:audit_process]
		
		if @affair_form.save
			flash[:notice] = "添加成功"
			redirect_to action: :index
		else
			flash[:error] =  @affair_form.errors.full_messages.join(",")
			redirect_to action: :new
		end
	end

	def edit
		@affair_form = AffairForm.find params[:id]
	end

	def update
		@affair_form = AffairForm.find params[:id]
		@affair_form.update_attributes affair_from_params
		@affair_form.audit_process = params[:affair_form][:audit_process]

		if @affair_form.save
			flash[:notice] = "修改成功"
			redirect_to action: :edit
		else
			flash[:error] =  @affair_form.errors.full_messages.join(",")
			redirect_to action: :edit,id: @affair_form
		end
	end

	def destroy
		@affair_form = AffairForm.find params[:id]
		@affair_form.destroy

		redirect_to action: :index
	end
	private
	def affair_from_params
		params.require(:affair_form).permit(:title,:form,:audit_process)
	end
end
