class Admin::NavigationsController < Admin::BaseController
	def index
		@top_navs = Navigation.top_nav
	end

	def new
		@nav = Navigation.new
	end

	def create
		nav = Navigation.create navigation_params
		if nav.valid?
			redirect_to admin_navigations_path,flash: {notice: "添加成功"}
		else
			flash_error nav
			redirect_to action: :new
		end
	end

	def edit
		@nav = Navigation.find params[:id]
	end

	def update
		nav = Navigation.find params[:id]
		nav.name = params[:navigation][:name]
		nav.url = params[:navigation][:url]
		if params[:navigation][:nav_id]
			nav.nav_id = params[:navigation][:nav_id]
		end
		nav.rank = params[:navigation][:rank]

		if nav.save
			redirect_to admin_navigations_path,flash:{notice: "修改成功"}
		else
			flash_error nav
			redirect_to action: :edit,id: nav
		end	
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
