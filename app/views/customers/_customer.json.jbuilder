# frozen_string_literal: true

json.extract! customer, :id, :name, :numbers, :destination_id, :contact_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
