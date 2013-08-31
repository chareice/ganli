# == Schema Information
#
# Table name: navigations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  nav_id     :integer
#  created_at :datetime
#  updated_at :datetime
#  rank       :integer
#

class Navigation < ActiveRecord::Base
	has_many :subs,class_name:"Navigation",foreign_key: "nav_id"
	belongs_to :nav,class_name:"Navigation"
	has_one :page

	def self.top_nav
		all.select do |nav|
			nav.is_top_nav?
		end
	end

	def self.no_page
		all.select do |nav|
			!nav.page && nav.url.empty?
		end
	end

	def is_top_nav?
		!nav_id
	end
end
