class SessionsController < ApplicationController
	layout false
	def new
	end

	def create
		unless captcha_valid? params[:captcha]
			redirect_to :back,flash: {error: "验证码输入错误"} and return
		end

		begin
			user = User.auth(params[:email],params[:password])
		rescue Exception => e
			flash[:error] = '用户名/密码错误，未审核通过的用户无法登陆'
			if session[:request_page]
				if session[:request_page].include? '/admin'
					redirect_to login_path
				end
			elsif params[:goadmin]
				redirect_to login_path
			else
				redirect_to root_path
			end
		else
			sign_in user
			if session[:request_page]
				url = session[:request_page]
				session[:request_page] = nil
				redirect_to url
			elsif params[:goadmin]
				redirect_to admin_path
			else
				redirect_to root_path
			end
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end
