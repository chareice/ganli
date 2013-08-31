module SessionsHelper
	def sign_in(user)
		session[:userid] = user.id
		self.current_user = user
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by id:session[:userid]
	end
end
