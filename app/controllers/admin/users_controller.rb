class Admin::UsersController < Admin::BaseController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		user = User.find params[:id]
		user.name = params[:user][:name]
		user.email = params[:user][:email]
		user.group = Group.find params[:user][:group]
		user.save
		
		redirect_to :action => :edit,:id => user 
	end
end
