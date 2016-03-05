json.array!(@cals) do |cal|
  json.extract! step, :id, :cals_consumed, :date
  json.url cal_url(cal, format: :json)
end
