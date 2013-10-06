class Bbs::TopicsController < Bbs::BbsController
	include Bbs::BbsHelper

	before_action :authenticate,only: [:show_content,:change_status,:replies_audit,:show_reply_content]
	
	def index
		require 'will_paginate/array'
		if is_admin?
			@topics = Topic.order_by_replies.paginate(:page=>params[:page],:per_page => 20)
		else
			@topics = Topic.order_by_replies_public.paginate(:page=>params[:page],:per_page => 20)
		end
	end

	def audit
		@topics = Topic.wait_audit
		@page_title = "审核帖子"
		session[:back] = audit_bbs_topics_path
	end

	def replies_audit
		@replies = Reply.wait_audit
		@page_title = "审核回复"
	end

	def show
		@topic = Topic.find params[:id]
		if (@topic.hidden? || @topic.wait_audit?) && !is_admin?
			access_forbidden
		end
		if @topic.public?
			Topic.increment_counter(:read_count,@topic.id)
		end
		if is_admin?
			@replies = @topic.replies.public_and_hidden
		else
			@replies = @topic.replies.public
		end
		@page_title = @topic.title
		session[:back] = bbs_topics_path
	end

	def show_content
		render text: Topic.find(params[:id]).content
	end

	def show_reply_content
		render text: Reply.find(params[:id]).content
	end

	def new
		@topic = Topic.new
		@page_title = "发表帖子"
	end

	def create
		unless captcha_valid? params[:captcha]
			redirect_to new_bbs_topic_path,flash: {error: "验证码输入错误"} and return
		end

		@topic = Topic.new
		@topic.title = params[:topic][:title]
		@topic.content = params[:topic][:content]

		@topic.user = current_user
		
		if is_trusted_user? @topic.user
			@topic.set_trusted
		end

		if @topic.save
			if @topic.wait_audit?
				redirect_to bbs_topics_path,flash: {notice: "发布成功，等待管理员审核"}
			else
				flash[:notice]="发布成功"
				redirect_to bbs_topic_path(@topic)
			end
		else
			redirect_to new_bbs_topic_path,flash: {error: @topic.errors.full_messages.join(",")}
		end
	end

	def change_status
		@topic = Topic.find params[:id]
		case params[:status]
		when "public"
			@topic.set_public
		when "hidden"
			@topic.set_hidden
		end
		@topic.save

		redirect_to :back,flash: {notice: "设置成功"}
	end
	
	def destroy
		@topic = Topic.find params[:id]
		@topic.destroy
		flash[:notice] =  "删除成功"
		redirect_to session[:back]
	end

	private
	def topic_params
		params.require(:topic).permit(:title,:content)
	end
end
