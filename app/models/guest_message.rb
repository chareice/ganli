# == Schema Information
#
# Table name: guest_messages
#
#  id         :integer          not null, primary key
#  status     :integer          default(0)
#  nickname   :string(255)
#  content    :text
#  ip         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class GuestMessage < ActiveRecord::Base
	validates :nickname,:content,presence: true

	scope :public,->{
		where(status: 1)
	}
end
