class Admin::FriendlyLinkClassificationsController < Admin::BaseController
	def index
		@friendly_link_classifications  = FriendlyLinkClassification.all
	end

	def new
		@friendly_link_classification = FriendlyLinkClassification.new
	end

	def create
		@friendly_link_classification = FriendlyLinkClassification.new firendly_link_classification_params

		if @friendly_link_classification.save
			flash[:notice] = "添加成功"
			redirect_to action: :index
		else
			flash[:error] = @friendly_link_classification.errors.full_messages.join(",")
			redirect_to action: :new
		end
	end

	def edit
		@friendly_link_classification = FriendlyLinkClassification.find params[:id]	
	end

	def update
		@friendly_link_classification = FriendlyLinkClassification.find params[:id]	
		@friendly_link_classification.assign_attributes firendly_link_classification_params

		if @friendly_link_classification.save
			flash[:notice] = "修改成功"
			redirect_to action: :index
		else
			flash[:error] = @friendly_link_classification.errors.full_messages.join(",")
			redirect_to action: :edit,id: @friendly_link_classification
		end
	end

	def destroy
		@friendly_link_classification = FriendlyLinkClassification.find params[:id]

		@friendly_link_classification.destroy

		flash[:notice] = "删除成功"
		redirect_to action: :index
	end
	private
	def firendly_link_classification_params
		params.require(:friendly_link_classification).permit(:name,:rank)
	end
end
