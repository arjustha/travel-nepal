json.extract! tour_package, :id, :name, :description, :destination_id, :price, :available_dates, :created_at, :updated_at
json.url tour_package_url(tour_package, format: :json)
