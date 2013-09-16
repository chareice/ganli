class Admin::FilesController < Admin::BaseController
	skip_before_filter :verify_authenticity_token,:authenticate

	def imageup
		path = Document.save_file params[:imgFile],"app/assets/images/article"
		asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("app/assets/images/",""))
		render json: {url:asset_path,error: 0}
	end

	def imagemanger
		render text: "test.jpg"
	end

	def thumb
		render :nothing
	end
end
