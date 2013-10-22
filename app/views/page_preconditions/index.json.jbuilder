json.array!(@page_preconditions) do |page_precondition|
  json.extract! page_precondition, :title
  json.url page_precondition_url(page_precondition, format: :json)
end
