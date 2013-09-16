class Admin::GuestMessagesController < Admin::BaseController
	def index
		@audit_guest_messages = GuestMessage.where status:0#待审核
		@guest_messages = GuestMessage.where status:1#审核通过
	end

	def new
		@guest_message = GuestMessage.new
	end

	def create
		@guest_message = GuestMessage.new
		@guest_message.nickname = params[:guest_message][:nickname]
		@guest_message.content = params[:guest_message][:content]
		@guest_message.ip = request.remote_ip

		if @guest_message.valid?
			@guest_message.save
			redirect_to action: :index
		else
			redirect_to action: :new
		end
	end

	def edit
		@guest_message = GuestMessage.find params[:id]
		unless @guest_message.status.to_i == 0
			redirect_to action: :index
		end
	end

	def update
		@guest_message = GuestMessage.find params[:id]
		unless @guest_message.status.to_i == 0
			redirect_to action: :index
		end
		if params[:guest_message][:status].to_i == 0
			@guest_message.status = 1
		else
			@guest_message.status = 2
		end
		@guest_message.save

		redirect_to action: :index
	end

	def destroy
		@guest_message = GuestMessage.find params[:id]
		@guest_message.destroy

		redirect_to admin_guest_messages_path,flash: {notice: "删除成功"}
	end
end
