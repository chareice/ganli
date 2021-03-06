# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  password         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  status           :integer          default(0)
#  lastlogin        :datetime
#  account          :string(16)
#  qq               :string(255)
#  phone            :string(255)
#  teacher_position :string(255)
#

require 'spec_helper'

describe User do
	it "is invlid without a email" do
		user = User.new(email:nil)
		expect(user).to have(1).errors_on(:email)
	end
end
