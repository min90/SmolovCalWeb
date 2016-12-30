class DeleteIncrementFromWorkouts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :workouts, :increment
  	add_column :workouts, :increase, :decimal
  end
end
