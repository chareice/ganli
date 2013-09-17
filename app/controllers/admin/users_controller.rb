class Admin::UsersController < Admin::BaseController
	def index
		@users = User.where(status: 1).paginate(:page=>params[:page],per_page: 10)
	end

	def new
		@user = User.new
	end

	def create
		user = User.new
		user.name = params[:user][:name]
		user.account = params[:user][:account]
		user.password = params[:user][:password]
		user.group = Group.find params[:user][:group]
		user.status = 1
		if user.save
			redirect_to admin_users_path,flash: {notice: "添加成功"}
		else
			redirect_to new_admin_user_path,flash: {error: user.errors.full_messages.join(",")}
		end
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		user = User.find params[:id]
		user.name = params[:user][:name]
		user.account = params[:user][:account]
		user.group = Group.find params[:user][:group]
		
		unless params[:user][:password].blank?
			user.reset_password (params[:user][:password])
		end
		if user.save
			redirect_to admin_users_path,flash:{notice: "修改成功"}
		else
			flash_error user
			redirect_to edit_admin_user_path(user)
		end

	end

	def audit
		@users = User.where status: 0
	end

	def audit_pass
		@user = User.find params[:id]
		@user.group = Group.find params[:user][:group]
		@user.status = 1

		@user.save
		#UserMailer.audit_pass(@user).deliver
		render text: "success"
	end

	def destroy
		@user = User.find params[:id]
		@user.destroy

		respond_to do |format|
			format.html { redirect_to admin_users_path,flash: {notice: "删除成功"}}
			format.text { render text: "success"}
		end
	end
end
