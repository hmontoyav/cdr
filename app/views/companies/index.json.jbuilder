json.array!(@companies) do |company|
  json.extract! company, :id, :name, :email, :address, :phone, :create_date
  json.url company_url(company, format: :json)
end
