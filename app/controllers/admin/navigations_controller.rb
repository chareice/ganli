class Admin::NavigationsController < Admin::BaseController
	def index
		@top_navs = Navigation.top_nav
	end
	def new
		@nav = Navigation.new
	end
	def create
		Navigation.create navigation_params
	end

	def edit
		@nav = Navigation.find params[:id]
	end

	def create
		nav = Navigation.find params[:id]
		nav.name = params[:navigation][:name]
		nav.url = params[:navigation][:url]
		nav.nav_id = params[:navigation][:nav_id]
		nav.rank = params[:navigation][:rank]

		redirect_to action: :edit,id: nav
	end

	private
	def navigation_params
		params.require(:navigation).permit(:name,:url,:nav_id,:rank)
	end
end
