# == Schema Information
#
# Table name: announcements
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  author     :integer
#  created_at :datetime
#  updated_at :datetime
#  status     :integer          default(0)
#

class Announcement < ActiveRecord::Base
	belongs_to :author,foreign_key: "author",class_name: "User"
	validates :title,:content,:author,presence: true
	has_many :announcement_viewers,dependent: :destroy

	has_many :viewers,foreign_key: "viewer",class_name: "User",through: :announcement_viewers

	default_scope{
		order("announcements.created_at desc")
	}

	scope :unread_list,-> (user_id){
		joins("left outer join announcement_viewers on announcements.id = announcement_viewers.announcement_id\
		 and announcement_viewers.viewer = #{user_id}")
		.where("announcement_viewers.id is null")
		.select("announcements.id AS id,announcements.title AS name")
	}
	scope :unread_list_count,-> (user_id){
		joins("left outer join announcement_viewers on announcements.id = announcement_viewers.announcement_id\
		 and announcement_viewers.viewer = #{user_id}")
		.where("announcement_viewers.id is null")
		.count
	}
end
