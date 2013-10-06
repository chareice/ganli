class PagesController < ApplicationController
	def index
		@row_one_news = Article.public.limit(8)
	end

	def new
		@page = Page.new
	end

	def show
		@page = Page.find params[:id]
		@page_title = @page.navigation.name
	end

	def create
		@page = Page.new
		@page.name = params['page']['name']

		if params['page']['ismodel'] == "yes"
			@page.model = params['page']['model']
		else
			@page.model = ""
			@page.content = params['page']['content']
			@page.parrent = params['page']['parrent']
			@page.rank = params['page']['rank']
		end

		@page.save

		render :text => "create success"
	end

	def service
		@page_title = "服务窗口"
	end
end