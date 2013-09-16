module PagesHelper
	def get_classification_articles(classification,per=8)
		Article.public.find_by_classification(classification).limit(per)
	end

	def list_header(classification)
		Classification.find(classification).name
	end

	def classification_name(classification)
		Classification.find(classification).name
	end

	def location
		s = link_to "首页","/"
		c = controller_name
		a = action_name

		if c == 'articles'
			top_nav = @classification.navigation.tops_nav

			s << " >> #{link_to top_nav.name,top_nav.link_url}".html_safe
			if a == 'classification'
				s << " >> #{link_to classification_name(params[:id]),classification_path(params[:id])}".html_safe
			elsif a == 'show'
				classification_id = @article.classification.id
				s << " >> #{link_to classification_name(classification_id),classification_path(classification_id)} >> 正文".html_safe
			end
		elsif c == 'pages'
			if a == 'show'
				if @page.navigation.is_top_nav?
					s << " >> #{@page.navigation.name}"
				else
					s << " >> #{link_to @page.navigation.nav.name,page_path(@page.navigation.nav.page)} >> #{@page.navigation.name}".html_safe
				end
			end
		end
		return s.html_safe
	end
end
