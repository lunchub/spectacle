json.array!(@page_images) do |page_image|
  json.extract! page_image, :name
  json.url page_image_url(page_image, format: :json)
end
