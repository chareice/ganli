class Admin::GroupsController < Admin::BaseController
	def index
		@groups = Group.all
	end

	def new
		@group = Group.new
		@permissions = Permission.all
	end

	def create
		@group = Group.new
		@group.name = params[:group][:name]
		if params[:group][:permission]
			@group.permissions = params[:group][:permission].map{|x| Permission.find x}
		end
		@group.save

		redirect_to action: :index
	end

	def edit
		@group = Group.find params[:id]
		@permissions = Permission.all
	end

	def update
		@group = Group.find params[:id]
		@group.name = params[:group][:name]
		if params[:group][:permission]
			@group.permissions = params[:group][:permission].map{|x| Permission.find x}
		end
		@group.save
		
		redirect_to action: :index 
	end
end
