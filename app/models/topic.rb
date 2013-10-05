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
#  status     :integer          default(0)
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
	scope :order_by_replies,->{
		find_by_sql("select read_count,status,user_id,id,created_at,actived_at,title from (select t.created_at as created_at,t.read_count,t.status,t.user_id,r.topic_id id,max(r.created_at) actived_at,t.title title from topics as t,replies as r where r.topic_id = t.id and t.status in (1,2,3) and r.status in(1,2,3)group by r.topic_id union all select created_at,read_count,status,user_id,id,created_at active_at,title from topics where status in (1,2,3)) as hehe group by id order by max(actived_at) desc")
	}
	scope :order_by_replies_public,->{
		find_by_sql("select read_count,status,user_id,id,created_at,actived_at,title from (select t.created_at as created_at,t.read_count,t.status,t.user_id,r.topic_id id,max(r.created_at) actived_at,t.title title from topics as t,replies as r where r.topic_id = t.id and t.status in (1,3) and r.status in(1,3)group by r.topic_id union all select created_at,read_count,status,user_id,id,created_at active_at,title from topics where status in (1,3)) as hehe group by id order by max(actived_at) desc")
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
		self.status == 1 or self.status == 3
	end

	def last_active
		if self.replies.public.count >0
			[self.replies.public.last.user.name,self.replies.public.last.created_at]
		else
			[self.user.name,self.created_at]
		end
	end

	def admin_last_active
		if self.replies.count >0
			[self.replies.last.user.name,self.replies.last.created_at]
		else
			[self.user.name,self.created_at]
		end
	end
end
