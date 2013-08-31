class Bbs::RepliesController < Bbs::BbsController
	def create
		@topic = Topic.find params[:topic_id]
		
		@topic.replies.create(content:params[:reply][:content],user:current_user)

		redirect_to bbs_topic_path(@topic)
	end
end
