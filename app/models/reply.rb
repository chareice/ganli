# == Schema Information
#
# Table name: replies
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  topic_id   :integer
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Reply < ActiveRecord::Base
	belongs_to :topic
	belongs_to :user
end
