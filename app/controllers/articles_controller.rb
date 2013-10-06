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

	def search
		@articles = Article.search(params[:search]).paginate(:page=>params[:page],per_page: 10)
		@newsest_articles = Article.all.limit(10)
		@page_title = %Q{"#{params[:search]}" 的搜索结果}
	end
end
