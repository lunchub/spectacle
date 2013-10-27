json.array!(@validations) do |validation|
  json.extract! validation, :name
  json.url validation_url(validation, format: :json)
end
