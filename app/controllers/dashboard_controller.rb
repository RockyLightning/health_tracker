class DashboardController < ApplicationController
  def show
    @burned = Workout.new.stats
    @consumed = Cal.new.stats
    @stepped = Step.new.stats
    @weight = WeighIn.new.stats
  end
end
