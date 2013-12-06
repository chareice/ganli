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
#  status            :integer          default(0)
#  thumb             :string(255)
#  flag              :string(255)
#  author            :integer
#

class Article < ActiveRecord::Base
	validates :title,:content,:classification,presence: true
	
	scope :find_by_classification,->(classification){
		where(classification_id:classification)
	}
	scope :search,->(search){
		public.where('title LIKE ?', "%#{search}%")
	}

	scope :public,->{
		where(status: 1)
	}
	scope :flash,->{
		where(flag: "f")
	}
	scope :by_user_self,->(user_id){
		where(author:user_id)
	}
	default_scope {
		order("created_at DESC")
	}
	belongs_to :classification
	belongs_to :author,foreign_key: "author",class_name: "User"
end
