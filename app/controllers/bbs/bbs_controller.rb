class Bbs::BbsController < ApplicationController
	layout 'bbs'
	before_action :require_login
	def flash_error(target)
		flash[:error] = target.errors.full_messages.join(',')
	end
end
