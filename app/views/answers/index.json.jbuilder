json.array!(@answers) do |answer|
  json.extract! answer, :comment
  json.url answer_url(answer, format: :json)
end
