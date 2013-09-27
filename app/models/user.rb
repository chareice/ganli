# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  password         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  status           :integer          default(0)
#  lastlogin        :datetime
#  account          :string(16)
#  qq               :string(255)
#  phone            :string(255)
#  teacher_position :string(255)
#

class User < ActiveRecord::Base
	validates :name,:account,:password,:email,:qq,:phone,presence: true
	validates :account, uniqueness: true

	validates_format_of :account, :with =>/[a-zA-Z0-9_]{6,16}/,message: "格式为6-16位,包含字母数字下划线"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "格式不正确"
	
	has_one :group, through: :users_group,dependent: :destroy
	has_one :users_group

	has_many :topics,dependent: :destroy
	has_many :announcement_viewers,foreign_key: "viewer",dependent: :destroy
	has_many :announcements,foreign_key: "author",dependent: :destroy
	has_many :articles,foreign_key: "author",dependent: :destroy
	has_many :affair_form_instances,foreign_key: "proposer",class_name:"AffairFormInstance",dependent: :destroy
	has_many :affair_form_instance_logs,foreign_key: "approver",class_name:"AffairFormInstanceAuditLog",dependent: :destroy
	has_many :documents,foreign_key: "uploader",dependent: :destroy
	has_many :lunches,foreign_key: "teacher",dependent: :destroy
	has_many :send_message,foreign_key: "sender",class_name:"Message",dependent: :destroy
	has_many :receive_message,foreign_key: "receiver",class_name:"Message",dependent: :destroy
	has_many :replies,dependent: :destroy
	before_create :encryptionPassword

	scope :with_group_id,->{
		joins(:group).select("users.id,users.name,groups.id AS group_id")
		.where(:status => 1)	
	}
	scope :with_groups_id,->(groups_id){
		joins(:group).select("users.id,users.name,groups.id AS group_id")
		.where("groups.id in (?)",groups_id)
		.where(:status => 1)
	}

	def is_allow_action?(action)
		group.permissions.include?(Permission.find_by_action(action).first)
	end
	def is_allow_permission(permission)
		group.permissions.include? permission
	end

	alias_method :has_permission?,:is_allow_permission
	
	def self.auth(account,password)
		require 'digest/md5'
		user = User.find_by account:account
		unless user
			raise "用户未找到" 
		end
		if user.status == 0
			raise "用户还在审核中，无法登陆"
		elsif user.status == 2
			raise "已经删除的用户"
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
