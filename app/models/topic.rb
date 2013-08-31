# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Topic < ActiveRecord::Base
	belongs_to :user
	has_many :replies
end
