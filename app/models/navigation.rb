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
	has_many :subs,class_name:"Navigation",foreign_key: "nav_id",dependent: :destroy
	belongs_to :nav,class_name:"Navigation"
	has_one :page,dependent: :destroy

	validates :name,presence: true

	default_scope order: :rank

	scope :top_nav,->{
		where(nav_id: nil).order(:rank)
	}

	scope :no_page,->{
		where(url:"").order(:rank).select{|navigation| !navigation.page}
	}

	def tops_nav
		unless nav
			self
		else
			nav.tops_nav
		end
	end

	def link_url
		if url.empty?
			if page
				page
			else
				"#"
			end
		else
			if url =~ /^[1-9]\d{0,2}$/
				Rails.application.routes.url_helpers.classification_path(url)
			else
				url
			end
		end
	end
=begin
	def self.top_nav
		all.select do |nav|
			nav.is_top_nav?
		end
	end
=end


	def is_top_nav?
		!nav_id
	end
end
