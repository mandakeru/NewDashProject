json.array!(@associates) do |associate|
  json.extract! associate, :id, :associate_number, :association_date, :payment
  json.url associate_url(associate, format: :json)
end
