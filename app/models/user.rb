# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	has_one :group, through: :users_group
	has_one :users_group

	has_many :topics
	
	before_create :encryptionPassword

	def is_allow_action?(action)
		group.permissions.include?(Permission.find_by_action(action).first)
	end
	def is_allow_permission(permission)
		group.permissions.include? permission
	end
	def self.auth(email,password)
		require 'digest/md5'
		user = User.find_by email:email
		unless user
			raise "User not fond" 
		end
		unless user.password.eql?(Digest::MD5.hexdigest password)
			raise "Password invalidate"
		end
		user
	end
	
	private
	def encryptionPassword
		require 'digest/md5'
		self.password = Digest::MD5.hexdigest self.password
	end
end
