class RegisterController < ApplicationController
	def email
	end

	def email_validate
		unless captcha_valid? params[:captcha]
			redirect_to register_path,flash: {error: "验证码输入错误"}
		else
			require 'digest/md5'
			ac = Digest::MD5.hexdigest(rand(9999).to_s)
			if params[:email].strip =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
				if User.where(email: params[:email].strip).size != 0
					redirect_to register_path,flash: {error: "已经注册过的用户邮箱"} and return
				end
				@email_params = {ac: ac,email: params[:email].strip,host: request.headers["Host"]}
				key = "email_validate_#{@email_params[:email]}"
				if Rails.cache.read  key

				else
					Rails.cache.write key,{ac: ac,time: Time.now},expries_in: 1.hours
					UserMailer.welcome_email(@email_params).deliver
				end
	
			else
				redirect_to register_path,flash: {error: "邮箱格式错误"}
			end
		end
	end

	def email_validate_from_user
		#key = "email_validate_#{params[:email]}"
		#if Rails.cache.read key
		#	if Rails.cache.read(key)[:ac] == params[:ac]
		#		session[:return_to] = request.fullpath
		#		@user = User.new
		#		@user.email = params[:email]
		#		session[:regester_user] = @user
		#	else
		#		render text: "验证失败，请重新注册" and return
		#	end
		#else
		#	render text: "验证失败，请重新注册" and return
		#end
		@user = User.new
		#session[:regester_user] = @user
	end
end
