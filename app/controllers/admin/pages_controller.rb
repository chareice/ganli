class Admin::PagesController < Admin::BaseController
	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		page = Page.new page_params

		page.save

		redirect_to edit_admin_page_path(page),flash:{notice: "添加成功"}
	end

	def edit
		@page = Page.find params[:id]
	end

	def update
	end

	private
	def page_params
		params.require(:page).permit(:title,:content,:navigation_id)
	end
end
