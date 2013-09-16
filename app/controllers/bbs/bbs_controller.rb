class Bbs::BbsController < ApplicationController
	layout 'bbs'
	before_action :require_login
end
