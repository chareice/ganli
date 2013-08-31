class SessionsController < ApplicationController
	def new
	end

	def create
		begin
			user = User.auth(params[:email],params[:password])
		rescue Exception => e
			flash[:error] = 'Invalid email/password combination'
			redirect_to login_path
		else
			sign_in user
			if session[:request_page]
				url = session[:request_page]
				session[:request_page] = nil
				redirect_to url
			else
				redirect_to admin_path
			end
		end
	end

	def destroy
	end
end
