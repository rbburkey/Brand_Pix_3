json.array!(@designs) do |design|
  json.extract! design, :id, :product_name, :description
  json.url design_url(design, format: :json)
end
