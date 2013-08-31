class Admin::LunchesController < Admin::BaseController
	def index
		@query_date = params[:date] || Lunch.lunch_date.to_date
		@lunches = Lunch.where(date:@query_date)
	end

	def new
	end

	def create
		unless Lunch.scheduled? current_user
			lunch = Lunch.new
			lunch.date = Lunch.lunch_date
			lunch.teacher = current_user
			lunch.save
		end
		redirect_to action: :new
	end
end
