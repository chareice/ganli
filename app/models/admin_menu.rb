# == Schema Information
#
# Table name: admin_menus
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  rank       :integer
#  created_at :datetime
#  updated_at :datetime
#

class AdminMenu < ActiveRecord::Base
	has_many :permissions,through: :admin_menu_permissions
	has_many :admin_menu_permissions
end
