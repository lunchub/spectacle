json.array!(@page_specs) do |page_spec|
  json.extract! page_spec, :title
  json.url page_spec_url(page_spec, format: :json)
end
