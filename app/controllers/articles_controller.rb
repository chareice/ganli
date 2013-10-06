class ArticlesController < ApplicationController
	def index
		@articles = Article.public.paginate(:page=>params[:page],per_page: 10)
	end

	def show
		@article = Article.find params[:id]
		@classification = @article.classification
		@page_title = @article.title
	end

	def classification
		@classification = Classification.find params[:id]
		@articles = Article.public.find_by_classification(params[:id]).paginate(:page=>params[:page],per_page: 10)
		@page_title = @classification.name
		render :index
	end
end
