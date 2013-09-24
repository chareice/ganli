class Admin::MessagesController < Admin::BaseController
	def index
		
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.new message_params
		if @message.save
			flash_notice
			redirect_to new_admin_message_path()
		else
			flash_error @message
			redirect_to new_admin_message_path()
		end
	end

	def edit
		
	end

	def update
		
	end

	def download
		render json: params
	end

	def show

	end

	def destroy
		
	end

	private
	def message_params
		par = params.require(:message).permit(:content)
		par[:sender] = current_user
		begin
			par[:receiver] = User.find params[:message][:receiver]
		rescue ActiveRecord::RecordNotFound => e
			par[:receiver] = nil
		end
		return par
	end
end
