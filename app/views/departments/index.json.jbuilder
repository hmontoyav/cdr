json.array!(@departments) do |department|
  json.extract! department, :id, :name, :create_date
  json.url department_url(department, format: :json)
end
