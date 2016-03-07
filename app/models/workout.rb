class Workout < ActiveRecord::Base
  belongs_to :exercise_type

  def burned
    today = Time.now.strftime("%Y-%m-%d")
    burned = Workout.where(:date => today)
    burned.sum(:cals_burned)
  end

  def stats
    {burned: burned}
  end
end
