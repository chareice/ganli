# == Schema Information
#
# Table name: pages
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  navigation_id :integer
#  content       :text(16777215)
#  created_at    :datetime
#  updated_at    :datetime
#

class Page < ActiveRecord::Base
	belongs_to :navigation

	validates :title,:content,:navigation,presence:true
end
