json.array!(@page_goals) do |page_goal|
  json.extract! page_goal, :title
  json.url page_goal_url(page_goal, format: :json)
end
