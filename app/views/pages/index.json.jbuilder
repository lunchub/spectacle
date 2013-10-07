json.array!(@pages) do |page|
  json.extract! page, :title, :url
  json.url page_url(page, format: :json)
end
