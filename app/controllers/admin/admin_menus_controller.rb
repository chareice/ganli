class Admin::AdminMenusController < Admin::BaseController
	def new
		@admin_menu = AdminMenu.new
	end

	def create

	end
end
