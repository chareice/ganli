class Admin::UsersController < Admin::BaseController
	def index
		@users = User.where status: 1
	end

	def new
		@user = User.new
	end

	def create
		user = User.new
		user.name = params[:user][:name]
		user.email = params[:user][:email]
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
		user.email = params[:user][:email]
		user.group = Group.find params[:user][:group]
		
		unless params[:user][:password].blank?
			user.reset_password (params[:user][:password])
		end
		user.save
		
		redirect_to edit_admin_user_path(user),flash:{notice: "修改成功"}
	end

	def audit
		@users = User.where status: 0
	end

	def audit_pass
		@user = User.find params[:id]
		@user.group = Group.find params[:user][:group]
		@user.status = 1

		@user.save
		UserMailer.audit_pass(@user).deliver
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
