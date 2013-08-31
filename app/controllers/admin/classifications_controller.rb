class Admin::ClassificationsController < Admin::BaseController
	def index

	end

	def new
		@classification = Classification.new
	end

	def create
		Classification.create classification_params
	end

	private
	def classification_params
		params.require(:classification).permit(:name)
	end
end
