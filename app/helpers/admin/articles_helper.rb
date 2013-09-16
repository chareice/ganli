module Admin::ArticlesHelper
	def thumb_size?(classification)
		classification.thumb_size ? "#{classification.thumb_size}": "false"
	end

	def article_classification(article)
		if article.classification
			article.classification.id
		else
			0
		end
	end

	def article_status(article)
		if @article.status
			@article.status
		else
			"false"
		end
	end

	def article_status_to_s(article)
		if article.status == 0
			"上线"
		else
			"下线"
		end
	end
end
