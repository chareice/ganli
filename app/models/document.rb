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
	
	private
	def self.save_file(upload_file)
		filename = "#{upload_file.original_filename}"
		file_dir = time_path
		path = File.join file_dir,filename
		FileUtils.mkdir_p(file_dir) unless File.exists? file_dir

		FileUtils.cp upload_file.tempfile,path unless File.exists? path
		path
	end

	def self.time_path
		documents_path = "#{Rails.root}/documents"
		
		t = Time.new
		year = t.year.to_s
		month = t.month.to_s.size < 2 ? "0#{t.month}" : "#{t.month}"
		day = t.day.to_s.size < 2 ? "0#{t.day}" : "#{t.day}"

		File.join documents_path,year,month,day
	end
end
