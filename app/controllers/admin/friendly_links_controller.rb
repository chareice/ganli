class Admin::FriendlyLinksController < Admin::BaseController
	def index
		@friendly_links = FriendlyLink.all
	end

	def new
		@friendlylink = FriendlyLink.new
	end

	def create
		new_link = FriendlyLink.create(friendly_link_params)
		if new_link.valid?
			redirect_to action: :index
		else
			redirect_to action: :new
		end
	end

	def edit
		@friendlylink = FriendlyLink.find params[:id]
	end

	def update
		link = FriendlyLink.update params[:id],friendly_link_params
		if link.valid?
			redirect_to action: :index
		else
			redirect_to edit_admin_friendly_link_path(link)
		end
	end

	def destroy
		FriendlyLink.find(params[:id]).destroy

		redirect_to action: :index
	end

	private
	def friendly_link_params
		params.require(:friendly_link).permit(:name,:url,:rank)
	end
end
