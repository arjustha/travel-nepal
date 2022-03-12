# frozen_string_literal: true

json.extract! vehicle, :id, :driver_age, :location, :check_in, :check_out, :contact, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
