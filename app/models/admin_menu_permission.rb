# == Schema Information
#
# Table name: admin_menu_permissions
#
#  id            :integer          not null, primary key
#  admin_menu_id :integer
#  permission_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  url           :string(255)
#

class AdminMenuPermission < ActiveRecord::Base
	belongs_to :admin_menu
	belongs_to :permission
end
