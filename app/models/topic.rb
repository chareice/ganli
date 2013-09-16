# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Topic < ActiveRecord::Base
	validates :title,:content,presence: true
	belongs_to :user
	has_many :replies

	scope :public,->{
		where(status: [1,3])
	}

	scope :public_and_hidden,->{
		where(status: [1,2,3])
	}

	scope :wait_audit,->{
		where(status: [0,3])
	}

	def set_public
		self.status = 1
	end

	def set_hidden
		self.status = 2
	end

	def set_wait_audit
		self.status = 0
	end

	def set_trusted
		self.status = 3
	end

	def wait_audit?
		self.status == 0
	end

	def hidden?
		self.status == 2
	end

	def public?
		self.status == 1
	end
end
