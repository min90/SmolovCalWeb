class WorkoutsController < ApplicationController
	before_action :authorize

	def index
		@workouts = Workout.where(user: current_user)
	end

	def new
		@new_workout = Workout.new
	end

	def create
		p permitted_params
		workout = Workout.create(permitted_params)
		if workout.save
			flash[:info] = "Cycle successfully created!"
			redirect_to workouts_path
		else
			p workout.errors
			flash[:info] = "Something went wrong, please try again!"
			redirect_to new_workout_path
		end
	end

	def edit
	end

	def update_progress
		p params
	end

	def show
		@workout = Workout.find(params[:id])
	end

	def destroy
		redirect_to workouts_path
	end


	private

	def permitted_params
		params.require(:workout).permit(:name, :jr, :sr, :max, :increase, :user_id)
	end
end
