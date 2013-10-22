json.array!(@page_links) do |page_link|
  json.extract! page_link, :element_name, :page_name, :url
  json.url page_link_url(page_link, format: :json)
end
