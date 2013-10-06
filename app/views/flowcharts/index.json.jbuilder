json.array!(@flowcharts) do |flowchart|
  json.extract! flowchart, 
  json.url flowchart_url(flowchart, format: :json)
end
