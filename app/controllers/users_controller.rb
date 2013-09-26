class UsersController < ApplicationController
	before_action :require_login,only:[:edit,:update]
	def new
		@user = User.new
	end

	def create
		unless captcha_valid? params[:captcha]
			redirect_to register_path,flash: {error: "验证码输入错误"} and return
		end
		#@user = session[:regester_user]
		#session[:regester_user] = nil
		#key = "email_validate_#{@user.email}"
		#Rails.cache.delete key
		@user = User.new
		@user.name = params[:user][:name].strip
		@user.account = params[:user][:account].strip
		@user.password = params[:user][:password].strip
		@user.email = params[:user][:email].strip
		@user.qq = params[:user][:qq].strip
		@user.phone = params[:user][:phone].strip
		@user.teacher_position = params[:user][:teacher_position]
		@user.grade = params[:user][:grade]

		if @user.save
			flash[:notice] = "申请成功 等待管理员审核"
			redirect_to root_path
		else
			flash[:error] = @user.errors.full_messages.join(',')
			redirect_to register_path
		end
	end

	def edit
		if User.find(params[:id]) != current_user
			access_forbidden
		end
		@user = User.find params[:id]
	end

	def profile
		@user = current_user
	end

	def edit_profile
		@user = current_user
		@user.email = params[:user][:email].strip
		@user.qq = params[:user][:qq].strip
		@user.phone = params[:user][:phone].strip
		@user.teacher_position = params[:user][:teacher_position]
		@user.grade = params[:user][:grade]
		if @user.save
			flash[:notice] = "修改成功"
			redirect_to profile_path
		else
			flash[:error] = @user.errors.full_messages.join(',')
			redirect_to profile_path
		end
	end

	def update
		if User.find(params[:id]) != current_user
			access_forbidden
		end

		if params[:user][:password] != params[:user][:re_password]
			redirect_to edit_user_path(current_user),flash:{notice:"两次密码输入不一致"} and return
		end

		unless current_user.check_password(params[:user][:old_password])
			redirect_to edit_user_path(current_user),flash:{notice:"原始密码输入错误"} and return
		end
		current_user.reset_password(params[:user][:password])

		current_user.save 
		redirect_to root_path,flash:{notice:"修改成功"}
	end
end
