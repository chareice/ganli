class Admin::DocumentsController < Admin::BaseController
	def index
		#status 1 为审核通过状态
		@documents = Document.where status:1
	end

	def new
		@document = Document.new
	end

	def create
		@document = Document.new
		@document.name = params[:document][:name]
		@document.uploader = current_user

		white_ext_list = %w{.xls .xlsx .doc .docx .pdf .ppt .pptx .txt .rar .zip}
		ext_name = Pathname.new(params[:document][:path].original_filename).extname().downcase
		unless white_ext_list.include?(ext_name)
			flash[:error] = "不允许的文件类型，请上传#{white_ext_list.join(' ')}类型"
			redirect_to action: :new and return
		end

		@document.path = Document.save_file(params[:document][:path]).gsub("#{Rails.root}","")

		if @document.save
			flash[:notice] = "上传资料成功，等待审核"
			redirect_to action: :new
		else
			flash[:error] = @document.errors.full_messages.join(',')
			redirect_to action: :new
		end
	end

	def audit
		@documents = Document.where status:0
	end

	def download
		@document  = Document.find params[:id]
		unless @document.status == 1
			access_forbidden
		else
			send_file("#{Rails.root}#{@document.path}")
		end
	end

	def edit
		@document  = Document.find params[:id]
	end

	def update
		@document  = Document.find params[:id]
		@document.status = params[:document][:status]

		@document.save
		redirect_to action: :audit
	end

	def audit_download
		@document  = Document.find params[:id]
		send_file("#{Rails.root}#{@document.path}")
	end

	def destroy
		@document  = Document.find params[:id]
		@document.destroy

		redirect_to admin_documents_path,flash:{notice: "删除成功"}
	end
end
