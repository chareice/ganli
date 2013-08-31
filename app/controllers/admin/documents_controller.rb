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
		@document.path = Document.save_file params[:document][:path]

		@document.save
		flash[:notice] = "上传资料成功，等待审核"
		redirect_to action: :new
	end

	def audit
		@documents = Document.where status:0
	end

	def download
		@document  = Document.find params[:id]
		unless @document.status == 1
			access_forbidden
		else
			send_file(@document.path)
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
		send_file(@document.path)
	end
end
