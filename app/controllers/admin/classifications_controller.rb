class Admin::ClassificationsController < Admin::BaseController
	def index
		@classifications = Classification.all
	end

	def new
		@classification = Classification.new
	end

	def create
		Classification.create classification_params

		redirect_to admin_classifications_path,flash: {notice: "添加成功"}
	end

	def edit
		@classification = Classification.find params[:id]
	end

	def update
		@classification = Classification.find params[:id]
		@classification.update_attributes classification_params

		redirect_to admin_classifications_path,flash: {notice: "修改成功"}
	end

	private
	def classification_params
		params.require(:classification).permit(:name,:thumb_size)
	end
end
