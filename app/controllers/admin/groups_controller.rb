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

		if @group.save
			flash[:notice] = "添加成功"
 			redirect_to action: :index
		else
			flash[:error] = @group.errors.full_messages.join(',')
			redirect_to action: :new
		end
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
		if @group.save
			flash[:notice] = "修改成功"
 			redirect_to action: :index
		else
			flash[:error] = @group.errors.full_messages.join(',')
			redirect_to action: :edit,id: @group
		end
	end

	def destroy
		@group = Group.find params[:id]
		@group.destroy

		flash[:notice] = "删除成功"

		redirect_to action: :index
	end
end
