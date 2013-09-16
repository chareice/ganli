module SessionsHelper
	def sign_in(user)
		session[:userid] = user.id

		user.lastlogin = user.updated_at
		user.updated_at = Time.now
		user.save
		
		self.current_user = user
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by id:session[:userid]
	end

	def sign_out
		session[:userid] = nil
	end

	def request_admin?
		controller.class.name.split("::").first=="Admin"
	end
end
