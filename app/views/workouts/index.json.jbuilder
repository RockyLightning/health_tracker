json.array!(@workout) do |workout|
  json.extract! weigh_in, :id, :exercise_id, :cals_burned, :date
  json.url workout_url(workout, format: :json)
end
