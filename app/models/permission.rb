# == Schema Information
#
# Table name: permissions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  describe   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Permission < ActiveRecord::Base
	scope :find_by_action, ->(action){
		joins(:permission_actions).where(permission_actions:{action:action})
	}
	has_many :permission_actions,dependent: :destroy
	has_and_belongs_to_many :groups

	def menu_link
		permission_actions.each do |action|
			if action.action =~ /#new|#index/
				return action.action.split "#"
			end
		end
	end

end
