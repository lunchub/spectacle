json.array!(@site_options) do |site_option|
  json.extract! site_option, :name
  json.url site_option_url(site_option, format: :json)
end
