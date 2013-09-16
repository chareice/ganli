class Admin::LeftNavsController < Admin::BaseController
	def index
		@left_navs = LeftNav.all
	end

	def new
		@left_nav = LeftNav.new
	end

	def create
		left_nav = LeftNav.new
		left_nav.name = params[:left_nav][:name]
		left_nav.url = params[:left_nav][:url]
		left_nav.rank = params[:left_nav][:rank]

		if params[:left_nav][:thumb]
			path = Document.save_file params[:left_nav][:thumb],"app/assets/images/article"
			asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("app/assets/images/",""))
			left_nav.thumb = asset_path
		end

		left_nav.save

		redirect_to edit_admin_left_nav_path(left_nav),flash:{notice: "添加成功"}
	end

	def edit
		@left_nav = LeftNav.find params[:id]
	end

	def update
		@left_nav = LeftNav.find params[:id]
		if params[:left_nav][:clear_thumb] == "1"
			@left_nav.thumb = nil
		end

		if params[:left_nav][:thumb]
			path = Document.save_file params[:left_nav][:thumb],"app/assets/images/article"
			asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("app/assets/images/",""))
			left_nav.thumb = asset_path
		end

		@left_nav.save
		redirect_to edit_admin_left_nav_path(@left_nav),flash:{notice: "修改成功"}
	end

	def destroy
		@left_nav = LeftNav.find params[:id]
		@left_nav.destroy

		redirect_to admin_left_navs_path,flash:{notice: "删除成功"}
	end
end
