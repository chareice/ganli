class Admin::FilesController < Admin::BaseController
	skip_before_filter :verify_authenticity_token,:authenticate

	def imageup
		white_ext_list = %w{.png .jpg .gif .bmp .jpeg}
		ext_name = Pathname.new(params[:imgFile].original_filename).extname().downcase
		unless white_ext_list.include?(ext_name)
			render json:{error: 1,message: "不允许的文件类型，请上传#{white_ext_list.join('')}类型"} and return
		end
		
		file_size = (params[:imgFile].size.to_f)/(1024*1024)
		if file_size > 10
			render json:{error: 1,message: "请上传小于10M的文件"} and return
		end

		path = Document.save_file(params[:imgFile],"public/assets/article").gsub(Rails.root.to_s,"")
		asset_path = "/assets" + ActionController::Base.helpers.asset_path(path.gsub("public/assets/",""))
		render json: {url:asset_path,error: 0}
	end

	def imagemanger
		render text: "test.jpg"
	end

	def fileup
		white_ext_list = %w{.xls .xlsx .doc .docx .pdf .ppt .pptx .txt .rar .zip}
		ext_name = Pathname.new(params[:imgFile].original_filename).extname().downcase
		unless white_ext_list.include?(ext_name)
			render json: {error: 1,message: "不允许的文件类型，请上传#{white_ext_list.join(' ')}类型"} and return
		end

		file_size = (params[:imgFile].size.to_f)/(1024*1024)
		if file_size > 20
			render json:{error: 1,message: "请上传小于20M的文件"} and return
		end

		path = Document.save_file(params[:imgFile],"document").gsub(Rails.root.to_s,"")
		asset_path = "/document" + ActionController::Base.helpers.asset_path(path.gsub("document",""))
		office_file_ext = %w{.xls .xlsx .doc .docx .pdf}
		if office_file_ext.include?(Pathname.new(path).extname().downcase)
			uuid = Crocodoc::Document.upload(File.open("#{Rails.root}#{asset_path}",'r'))
			asset_path += "?uuid=#{uuid}"
		end
		render json: {url:asset_path,error: 0}
	end

	def thumb
		render :nothing
	end
end
