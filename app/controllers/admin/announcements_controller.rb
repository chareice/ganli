class Admin::AnnouncementsController < Admin::BaseController
	def index
		@announcements = Announcement.all.paginate(:page=>params[:page],per_page: 10)
	end

	def create
		@announcement = Announcement.new announcement_params
		if @announcement.save
			flash_notice
			redirect_to action: :index
		else
			flash_error @announcement
			redirect_to action: :new
		end
	end

	def new
		@announcement = Announcement.new
	end

	def update
		@announcement = Announcement.find params[:id]
		@announcement.assign_attributes announcement_params
		if @announcement.save
			flash_notice
			redirect_to action: :index
		else
			flash_error @announcement
			redirect_to action: :edit,id: @announcement
		end
	end

	def edit
		@announcement = Announcement.find params[:id]
	end

	def show
		@announcement = Announcement.find params[:id]
		unless @announcement.viewers.include?(current_user)
			@announcement.viewers << current_user
		end
	end

	def destroy
		
	end

	def view_index 
		@announcements = Announcement.all.paginate(:page=>params[:page],per_page: 10)
	end

	def announcement_params
		par = params.require(:announcement).permit(:title,:content)
		par[:author]  = current_user
		return par
	end
end