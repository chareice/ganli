class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  after_action :reset_last_captcha_code!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def access_forbidden
  	render :file => "public/401.html",:layout => false,:status=>401 
  end
  
  def require_login
    unless current_user
      session[:request_page] = request.original_url
      if controller_path == 'admin/admin'
        redirect_to(login_path)
      else
        redirect_to(root_path,flash:{notice:"请登录"})
      end
    end
  end

  def authenticate
    unless current_user && current_user.is_allow_action?("#{controller_path}##{action_name}")
      access_forbidden
    end
  end
end
