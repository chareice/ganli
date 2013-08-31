# == Schema Information
#
# Table name: classifications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Classification < ActiveRecord::Base
	has_many :article
end
