class Admin::FriendlyLinksController < Admin::BaseController
	def index
		@friendly_links = FriendlyLink.all
	end

	def new
		@friendlylink = FriendlyLink.new
	end

	def create
		new_link = FriendlyLink.new(friendly_link_params)
		new_link.friendly_link_classification = FriendlyLinkClassification.find params[:friendly_link][:friendly_link_classification]
		
		if new_link.save
			flash[:notice] = "添加成功"
			redirect_to action: :index
		else
			flash[:error] = new_link.errors.full_messages.join(',')
			redirect_to action: :new
		end
	end

	def edit
		@friendlylink = FriendlyLink.find params[:id]
	end

	def update
		link = FriendlyLink.find params[:id]
		link.assign_attributes friendly_link_params
		link.friendly_link_classification = FriendlyLinkClassification.find params[:friendly_link][:friendly_link_classification]

		if link.save
			flash[:notice] = "修改成功"
			redirect_to action: :index
		else
			flash[:error] = link.errors.full_messages.join(',')
			redirect_to edit_admin_friendly_link_path(link)
		end
	end

	def destroy
		FriendlyLink.find(params[:id]).destroy
		flash_notice
		redirect_to action: :index
	end

	private
	def friendly_link_params
		params.require(:friendly_link).permit(:name,:url,:rank)
	end
end
