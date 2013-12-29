class Admin::ArticlesController < Admin::BaseController
	def index
		if current_user.is_admin?
			if params[:classification].to_i > 0
				@articles = Article.find_by_classification(params[:classification]).paginate(:page=>params[:page],per_page: 10)
			else
				@articles = Article.all.paginate(:page=>params[:page],per_page: 10)
			end
		else
			if params[:classification].to_i > 0
				@articles = Article.find_by_classification(params[:classification]).by_user_self(current_user.id).paginate(:page=>params[:page],per_page: 10)
			else
				@articles = Article.by_user_self(current_user.id).paginate(:page=>params[:page],per_page: 10)
			end
		end
	end

	def new
		@article = Article.new
	end
	
	def create
		article = Article.new article_params
		article.status = params[:article][:status]
		article.flag = params[:article][:flag]
		article.author = current_user
		if params[:article][:thumb]
			path = Document.save_file(params[:article][:thumb],"public/assets/article").gsub(Rails.root.to_s,"")
			asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("public/assets/",""))
			article.thumb = asset_path
		end

		if not current_user.is_admin?
			article.status = 0
		end
		
		if article.save
			redirect_to edit_admin_article_path(article),flash:{notice: "添加成功 等待审核"}
		else
			redirect_to new_admin_article_path,flash: {error: article.errors.full_messages.join(",")}
		end
	end

	def edit
		@article = Article.find params[:id]

		unless current_user.is_admin?
			unless @article.author == current_user
				access_forbidden
			end
		end
	end
	
	def update
		@article = Article.find params[:id]

		unless current_user.is_admin?
			unless @article.author == current_user
				access_forbidden
			end
		end

		@article.title = params[:article][:title]
		@article.content = params[:article][:content]
		@article.classification_id = params[:article][:classification_id]
		@article.status = params[:article][:status] if @article.status != 0
		@article.flag = params[:article][:flag]

		if params[:article][:clear_thumb] == "1"
			@article.thumb = nil
		end

		if params[:article][:thumb]
			path = Document.save_file(params[:article][:thumb],"public/assets/article").gsub(Rails.root.to_s,"")
			asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("public/assets/",""))
			@article.thumb = asset_path
		end

		@article.save
		if @article.save
			redirect_to edit_admin_article_path(@article),flash:{notice: "修改成功"}
		else
			redirect_to edit_admin_article_path(@article),flash: {error: @article.errors.full_messages.join(",")}
		end
	end

	def audit
		if params[:classification].to_i > 0
			@articles = Article.find_by_classification(params[:classification]).where("status = 0").paginate(:page=>params[:page],per_page: 10)
		else
			@articles = Article.where("status = 0").paginate(:page=>params[:page],per_page: 10)
		end
	end

	def audit_edit
		@article = Article.find params[:id]
	end

	def audit_article
		@article = Article.find params[:id]

		@article.title = params[:article][:title]
		@article.content = params[:article][:content]
		@article.classification_id = params[:article][:classification_id]
		@article.status = params[:article][:status]
		@article.flag = params[:article][:flag]

		if params[:article][:clear_thumb] == "1"
			@article.thumb = nil
		end

		if params[:article][:thumb]
			path = Document.save_file(params[:article][:thumb],"app/assets/images/article").gsub(Rails.root.to_s,"")
			asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("app/assets/images/",""))
			@article.thumb = asset_path
		end

		@article.save
		if @article.save
			redirect_to audit_admin_articles_path,flash:{notice: "审核成功"}
		else
			redirect_to audit_edit_admin_article_path(@article),flash: {error: @article.errors.full_messages.join(",")}
		end

	end

	def destroy
		@article = Article.find params[:id]
		@article.destroy

		flash_notice
		redirect_to action: :index
	end

	private
	def article_params
		params.require(:article).permit(:title,:content,:classification_id)
	end

end
