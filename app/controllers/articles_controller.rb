class ArticlesController < ApplicationController
	def index
		@articles = Article.public.paginate(:page=>params[:page],per_page: 10)
	end

	def show
		@article = Article.find params[:id]
	end

	def classification
		@articles = Article.public.find_by_classification(params[:id]).paginate(:page=>params[:page],per_page: 10)
		render :index
	end
end
