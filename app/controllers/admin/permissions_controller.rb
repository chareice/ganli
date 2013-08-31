class Admin::PermissionsController < Admin::BaseController
	def index
		@permissions = Permission.all
	end

	def new
		@permission = Permission.new
	end

	def create
	end

	def edit
	end

	def update
	end
end
