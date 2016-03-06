class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.belongs_to :exercise_type
      t.integer :exercise_id
      t.integer :cals_burned
      t.date :date

      t.timestamps null: false
    end
  end
end
