# == Schema Information
#
# Table name: replies
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  topic_id   :integer
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  status     :integer          default(0)
#

class Reply < ActiveRecord::Base
	validates :content,presence: true
	belongs_to :topic
	belongs_to :user
	before_create :make_floor

	scope :public,->{
		where(status: [1,3])
	}

	scope :public_and_hidden,->{
		where(status: [1,2,3])
	}

	scope :wait_audit,->{
		where(status: [0])
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
	
	private
	def make_floor
		last_floor = self.topic.last_floor + 1
		self.floor = last_floor
		self.topic.last_floor += 1
		self.topic.save
	end
end
