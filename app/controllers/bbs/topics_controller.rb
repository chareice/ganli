class Bbs::TopicsController < Bbs::BbsController
	def index
		@topics = Topic.all
	end

	def show
		@topic = Topic.find params[:id]
		@replies = @topic.replies
	end
	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new
		@topic.title = params[:topic][:title]
		@topic.content = params[:topic][:content]
		@topic.user = current_user
		@topic.save

		redirect_to action: :index
	end

	private
	def topic_params
		params.require(:topic).permit(:title,:content)
	end
end
