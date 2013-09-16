class Bbs::RepliesController < Bbs::BbsController
	include Bbs::BbsHelper
	def create
		@topic = Topic.find params[:topic_id]
		reply = Reply.new
		reply.content = params[:reply][:content]
		reply.user = current_user

		if is_trusted_user?
			reply.set_trusted
		end

		@topic.replies << reply
		
		if reply.wait_audit?
			notice = "回复成功，等待审核"
		else
			notice = "回复成功"
		end
		
		redirect_to bbs_topic_path(@topic),flash: {notice: notice}
	end

	def change_status
		@reply = Reply.find params[:id]
		case params[:status]
		when "public"
			@reply.set_public
		when "hidden"
			@reply.set_hidden
		end
		@reply.save

		redirect_to :back,flash: {notice: "设置成功"}
	end

	def destroy
		@reply = Reply.find params[:id]
		@reply.destroy

		redirect_to :back,flash: {notice: "删除成功"}
	end
end
