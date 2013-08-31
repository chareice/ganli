class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :authenticate
  def access_forbidden
  	render :file => "public/401.html",:layout => false,:status=>401 
  end
  
  private
  def authenticate
  	
  end
end
