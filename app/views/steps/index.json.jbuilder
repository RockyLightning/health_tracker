json.array!(@steps) do |step|
  json.extract! step, :id, :steps_taken, :date
  json.url step_url(step, format: :json)
end
