json.array!(@mail_deliveries) do |mail_delivery|
  json.extract! mail_delivery, :name
  json.url mail_delivery_url(mail_delivery, format: :json)
end
