# == Schema Information
#
# Table name: announcements
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  author     :integer
#  created_at :datetime
#  updated_at :datetime
#  status     :integer          default(0)
#

class Announcement < ActiveRecord::Base
end
