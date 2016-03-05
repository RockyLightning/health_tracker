require 'test_helper'

class ExerciseTypeTest < ActiveSupport::TestCase
  setup do
    @exercise_type = exercise_types(:one)
  end
#
  test "new exercise type can be created" do
    e = ExerciseType.new(name: "Cardio")
    assert_equal "Cardio", e.name
  end

  test "should create exercise_type" do
    e = ExerciseType.create(name: "Cardio")
    refute e.valid?
    refute ExerciseType.count == 3
    assert_equal 2, ExerciseType.count
  end

end
