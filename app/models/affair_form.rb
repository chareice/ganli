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
end
