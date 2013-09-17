# == Schema Information
#
# Table name: friendly_links
#
#  id                              :integer          not null, primary key
#  name                            :string(255)
#  url                             :string(255)
#  rank                            :integer
#  created_at                      :datetime
#  updated_at                      :datetime
#  friendly_link_classification_id :integer
#

class FriendlyLink < ActiveRecord::Base
	validates :name,:url,:friendly_link_classification,presence: true

	default_scope order: :rank
	belongs_to :friendly_link_classification
end
