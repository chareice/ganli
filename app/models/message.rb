# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  sender     :integer
#  receiver   :integer
#  content    :text
#  atachment  :string(255)
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Message < ActiveRecord::Base
	validates :sender,:receiver,:content,presence: true
	
	belongs_to :sender,foreign_key: "sender",class_name: "User"
	belongs_to :receiver,foreign_key: "receiver",class_name: "User"
	default_scope{
		order("created_at desc")
	}
	scope :inbox,->(user_id){
		where(:receiver => user_id)
	}
	scope :outbox,->(user_id){
		where(:sender => user_id)
	}
	scope :unread,->(user_id){
		where(:status => 0,:receiver => user_id).select("id")
	}
	scope :unread_count,->(user_id){
		where(:status => 0,:receiver => user_id).count
	}
end
