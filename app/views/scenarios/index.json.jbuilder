json.array!(@scenarios) do |scenario|
  json.extract! scenario, :name
  json.url scenario_url(scenario, format: :json)
end
