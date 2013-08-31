class PagesController < ApplicationController
	def index
	end

	def new
		@page = Page.new
	end

	def show
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
end