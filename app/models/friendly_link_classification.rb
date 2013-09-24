# == Schema Information
#
# Table name: friendly_link_classifications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  rank       :integer          default(0)
#

class FriendlyLinkClassification < ActiveRecord::Base
	validates :name,:rank,presence: true
	has_many :friendly_links,dependent: :destroy

	default_scope {
		order('rank')
	}
end
