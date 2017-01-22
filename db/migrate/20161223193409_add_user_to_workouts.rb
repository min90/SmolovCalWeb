class AddUserToWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :workouts, :users, index: true
  end
end
