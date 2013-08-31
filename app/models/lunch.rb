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

	def self.scheduled?(user)
		!Lunch.where(date:Lunch.lunch_date.to_date,teacher:user).empty?
	end

	def self.lunch_date
		now = Time.new
		if now.hour > 15
			now.tomorrow.tomorrow
		else
			now.tomorrow
		end
	end
end
