class Admin::PagesController < Admin::BaseController
	def new
		@page = Page.new
	end

	def create
	end
end
