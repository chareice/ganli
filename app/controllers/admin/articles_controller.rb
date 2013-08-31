class Admin::ArticlesController < Admin::BaseController
	def index
		if params[:classification].to_i > 0
			@articles = Article.find_by_classification params[:classification]
		else
			@articles = Article.all
		end
	end

	def new
		@article = Article.new
	end
	
	def create
		article = Article.create article_params

		redirect_to action: :edit,id: article
	end

	def edit
		@article = Article.find params[:id]
	end
	
	def update
		@article = Article.find params[:id]
		@article.title = params[:article][:title]
		@article.content = params[:article][:content]
		@article.classification_id = params[:article][:classification_id]
		@article.save

		redirect_to action: :index
	end

	def destroy
		render text: params
	end
	private
	def article_params
		params.require(:article).permit(:title,:content,:classification_id)
	end
end
