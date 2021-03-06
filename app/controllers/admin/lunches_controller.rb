class Admin::LunchesController < Admin::BaseController
	def index

		@query_date = if params[:date] then params[:date].values.join("-").to_date else Lunch.lunch_date.to_date end
		@lunches = Lunch.where(date:@query_date)
	
		respond_to do |format|
			format.html
			format.xls
		end
	end

	def new
		last_checked = Lunch.where(teacher:current_user.id).order("created_at desc").first()
		if last_checked and not last_checked.mold.empty?
			@last_mold = last_checked.mold.join(',')
		else
			@last_mold = nil
		end
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
