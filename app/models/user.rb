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
#  status     :integer          default(0)
#

class User < ActiveRecord::Base
	validates :name,:email,:password,presence: true
	validates :email, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	has_one :group, through: :users_group
	has_one :users_group

	has_many :topics,dependent: :destroy
	has_many :articles,foreign_key: "author",dependent: :destroy
	has_many :affair_form_instances,foreign_key: "proposer",class_name:"AffairFormInstance",dependent: :destroy
	has_many :affair_form_instance_logs,foreign_key: "approver",class_name:"AffairFormInstanceAuditLog",dependent: :destroy
	has_many :documents,foreign_key: "uploader",dependent: :destroy
	has_many :lunches,foreign_key: "teacher",dependent: :destroy
	has_many :lunches,foreign_key: "teacher",dependent: :destroy
	has_many :replies,dependent: :destroy
	before_create :encryptionPassword

	def is_allow_action?(action)
		group.permissions.include?(Permission.find_by_action(action).first)
	end
	def is_allow_permission(permission)
		group.permissions.include? permission
	end

	alias_method :has_permission?,:is_allow_permission
	
	def self.auth(email,password)
		require 'digest/md5'
		user = User.find_by email:email
		unless user
			raise "用户未找到" 
		end
		if user.status == 0
			raise "用户还在审核中，无法登陆"
		end
		unless user.password.eql?(Digest::MD5.hexdigest password)
			raise "密码错误"
		end
		user
	end
	
	def reset_password(new_password)
		require 'digest/md5'
		self.password = Digest::MD5.hexdigest(new_password)
	end
	def check_password(che_password)
		require 'digest/md5'
		self.password.eql?(Digest::MD5.hexdigest(che_password))
	end
	private
	def encryptionPassword
		require 'digest/md5'
		self.password = Digest::MD5.hexdigest self.password
	end
end
