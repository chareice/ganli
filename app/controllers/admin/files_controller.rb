class Admin::FilesController < Admin::BaseController
	skip_before_filter :verify_authenticity_token,:authenticate

	def imageup
		path = Document.save_file(params[:imgFile],"public/assets/article").gsub(Rails.root.to_s,"")
		asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("public/assets/",""))
		render json: {url:asset_path,error: 0}
	end

	def imagemanger
		render text: "test.jpg"
	end

	def fileup
		path = Document.save_file(params[:imgFile],"document").gsub(Rails.root.to_s,"")
		asset_path = "/document" + ActionController::Base.helpers.asset_path(path.gsub("document",""))
		render json: {url:asset_path,error: 0}
	end

	def thumb
		render :nothing
	end
end
