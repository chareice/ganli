class Admin::NavigationsController < Admin::BaseController
	def index
		@top_navs = Navigation.top_nav
	end

	def new
		@nav = Navigation.new
	end

	def create
		Navigation.create navigation_params

		redirect_to admin_navigations_path,flash: {notice: "添加成功"}
	end

	def edit
		@nav = Navigation.find params[:id]
	end

	def update
		nav = Navigation.find params[:id]
		nav.name = params[:navigation][:name]
		nav.url = params[:navigation][:url]
		nav.nav_id = params[:navigation][:nav_id]
		nav.rank = params[:navigation][:rank]

		nav.save
		redirect_to edit_admin_navigation_path(nav),flash:{notice: "修改成功"}
	end

	def destroy
		nav = Navigation.find params[:id]
		nav.destroy

		redirect_to admin_navigations_path,flash:{notice: "删除成功"}
	end
	private
	def navigation_params
		params.require(:navigation).permit(:name,:url,:nav_id,:rank)
	end
end
