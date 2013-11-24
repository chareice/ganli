# == Schema Information
#
# Table name: affair_forms
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  form          :text
#  created_at    :datetime
#  updated_at    :datetime
#  audit_process :string(255)
#

class AffairForm < ActiveRecord::Base
	serialize :audit_process
	has_many :affair_form_instances

	validates :title,:audit_process,:form,presence: true
	before_save :form_to_hash

	def form_to_hash
		doc = Nokogiri::HTML(self.form)
		doc.css("td").each_with_index{|td,i| i.even? ? td['class'] = 'field' : td['class'] = 'value' }
		self.form = doc.serialize
	end

    def get_fields
        doc = Nokogiri::HTML(self.form)
        doc.css(".field").map{|field| field.children.text.strip }
    end
end
