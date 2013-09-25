class Admin::MessagesController < Admin::BaseController
	skip_before_filter :authenticate,only:[:new_message_notice]
	def index
		@messages = Message.inbox(current_user.id)
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

	def outbox
		@messages = Message.outbox current_user
	end

	def show
		@message = Message.find params[:id]
		unless @message.receiver == current_user
			access_forbidden
		end
		if @message.status == "0"
			@message.status = "1"
			@message.save
		end
	end

	def preview
		@message = Message.find params[:id]
		unless @message.sender == current_user
			access_forbidden
		end
	end

	def destroy
		
	end

	def new_message_notice
		c_u_id = current_user.id
		notice = {
			messages: {count: Message.unread_count(c_u_id),list: Message.unread(c_u_id).limit(5),name: "私信",show_path: admin_messages_path},
			announcements:{count:Announcement.unread_list_count(c_u_id), list: Announcement.unread_list(c_u_id).limit(5),name: "通知公告",show_path: admin_announcements_path} 
		}
		render json: notice
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
