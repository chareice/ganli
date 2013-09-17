# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Group < ActiveRecord::Base
	has_many :users,through: :users_group
	has_many :users_group

	validates :name,presence: true
	has_and_belongs_to_many :permissions
end
