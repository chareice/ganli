class GuestMessagesController < ApplicationController
	def index
		@guest_messages = GuestMessage.public
	end

	def new
		@guest_message = GuestMessage.new
	end

	def create
		unless captcha_valid? params[:captcha]
			redirect_to new_guest_message_path,flash: {error: "验证码输入错误"} and return
		end
		@guest_message = GuestMessage.new
		@guest_message.nickname = params[:guest_message][:nickname]
		@guest_message.content = params[:guest_message][:content]

		if @guest_message.save
			redirect_to guest_messages_path,flash: {notice: "发布成功，等待管理员审核"}
		else
			redirect_to new_guest_message_path,flash: {error: @guest_message.errors.full_messages.join(",")}
		end
	end

end
