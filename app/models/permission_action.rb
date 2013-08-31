# == Schema Information
#
# Table name: permission_actions
#
#  id            :integer          not null, primary key
#  permission_id :integer
#  action        :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class PermissionAction < ActiveRecord::Base
	belongs_to :permission
end
