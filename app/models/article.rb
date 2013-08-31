# == Schema Information
#
# Table name: articles
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  content           :text(16777215)
#  classification_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Article < ActiveRecord::Base
	scope :find_by_classification,->(classification){
		where(classification_id:classification)
	}
	belongs_to :classification
end
