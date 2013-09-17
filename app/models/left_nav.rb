# == Schema Information
#
# Table name: left_navs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  thumb      :string(255)
#  url        :string(255)
#  rank       :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#

class LeftNav < ActiveRecord::Base
	default_scope order: :rank
	
	validates :name,:thumb,:rank,:url,presence: true
end
