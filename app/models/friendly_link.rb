# == Schema Information
#
# Table name: friendly_links
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  rank       :integer
#  created_at :datetime
#  updated_at :datetime
#

class FriendlyLink < ActiveRecord::Base
	validates :name,:url,presence: true
end
