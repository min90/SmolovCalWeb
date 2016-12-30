class RenameReferenceFromWorkouts < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :workouts, :users, index: true
  	add_reference :workouts, :user, index: true
  end
end
