# == Schema Information
#
# Table name: groups_permissions
#
#  id            :integer          not null, primary key
#  permission_id :integer
#  group_id      :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class GroupsPermissions < ActiveRecord::Base
end
