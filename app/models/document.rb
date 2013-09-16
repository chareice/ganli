# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  path       :string(255)
#  status     :integer          default(0)
#  uploader   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Document < ActiveRecord::Base
	belongs_to :uploader,class_name: "User",foreign_key: "uploader"
	
	default_scope order: "created_at desc"
	private
	def self.save_file(upload_file,main_path = "document")
		filename = "#{upload_file.original_filename}"
		file_dir = time_path main_path
		path = File.join file_dir,filename
		FileUtils.mkdir_p(file_dir) unless File.exists? file_dir

		cope_file(upload_file.tempfile,path)
	end

	def self.cope_file(o,t)
		if File.exists?(t)
			ext = File.extname(t).to_s
			cope_file(o,t.gsub(ext,"_")+ext)
		else
			FileUtils.cp(o,t)
			return t
		end
	end

	def self.time_path(main_path)
		unless main_path
			main_path = 'document'
		end
		documents_path = "#{Rails.root}/#{main_path}"
		
		t = Time.new
		year = t.year.to_s
		month = t.month.to_s.size < 2 ? "0#{t.month}" : "#{t.month}"
		day = t.day.to_s.size < 2 ? "0#{t.day}" : "#{t.day}"

		File.join documents_path,year,month,day
	end
end
