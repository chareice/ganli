# == Schema Information
#
# Table name: lunches
#
#  id         :integer          not null, primary key
#  date       :date
#  teacher    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Lunch < ActiveRecord::Base
	belongs_to :teacher,class_name: "User",foreign_key: "teacher"
	serialize :mold
	validates :mold,presence: {message:"必须选择"}

	scope :by_mold,->(mold_id,date){
		where("mold like ?","%#{mold_id}%")
		.where(date: date)
	}
	scope :current_user_mold,->(user){
		where(date:Lunch.lunch_date.to_date,teacher:user).take
	}

	def by_mold(mold_id)
		where("mold like ?","%#{mold_id}%")
	end
	def mold_to_s
		self.mold.map do |mold|
			case mold
				when '1'
					"早餐"
				when '2'
					"中餐"
				when '3'
					"晚餐"
			end
		end
	end

	def breakfast
		
	end

	def lunch
		
	end

	def dinner
		
	end
	
	def self.scheduled?(user)
		!Lunch.where(date:Lunch.lunch_date.to_date,teacher:user).empty?
	end

	def self.lunch_date
		now = Time.new
		if now.hour > 17
			now.tomorrow.tomorrow
		else
			now.tomorrow
		end
	end
end
