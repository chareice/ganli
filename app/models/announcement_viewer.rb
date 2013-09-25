class AnnouncementViewer < ActiveRecord::Base
	belongs_to :announcement
	belongs_to :viewer,foreign_key: "viewer",class_name:"User"
end
