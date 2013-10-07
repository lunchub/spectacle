json.array!(@page_actions) do |page_action|
  json.extract! page_action, :title
  json.url page_action_url(page_action, format: :json)
end
