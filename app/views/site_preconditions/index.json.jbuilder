json.array!(@site_preconditions) do |site_precondition|
  json.extract! site_precondition, :title, :page_id
  json.url site_precondition_url(site_precondition, format: :json)
end
