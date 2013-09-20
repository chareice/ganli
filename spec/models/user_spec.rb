require 'spec_helper'

describe User do
	it "is invlida without a email" do
		user = User.new(email:nil)
		expect(user).to have(1).errors_on(:email)
	end
end