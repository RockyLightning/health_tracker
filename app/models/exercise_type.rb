class ExerciseType < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :workouts
end
