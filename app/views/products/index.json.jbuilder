json.array!(@products) do |product|
  json.extract! product, :id, :asin, :description, :price, :ship_price, :rank
  json.url product_url(product, format: :json)
end
