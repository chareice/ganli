class Admin::LunchesController < Admin::BaseController
	def index
		@query_date = params[:date] || Lunch.lunch_date.to_date
		@lunches = Lunch.where(date:@query_date)

		respond_to do |format|
			format.html
			format.xls
		end
	end

	def new
		@lunch = Lunch.new
	end

	def create
		#render json: params
		unless Lunch.scheduled? current_user
			lunch = Lunch.new
			lunch.date = Lunch.lunch_date
			lunch.teacher = current_user
			lunch.mold = params[:lunch][:mold].reject{ |c| c.empty? }
			if lunch.save
				flash[:notice] = "订餐成功"
			else
				flash_error lunch
			end
			redirect_to action: :new
		end
		#redirect_to action: :new
	end
end
