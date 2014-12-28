json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :deal_id, :user_id, :total_purchases
  json.url purchase_url(purchase, format: :json)
end
