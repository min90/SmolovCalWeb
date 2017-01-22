class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.text :name
      t.boolean :jr
      t.boolean :sr
      t.integer :max
      t.decimal :increment

      t.timestamps
    end
  end
end
