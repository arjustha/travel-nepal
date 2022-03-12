# frozen_string_literal: true

class Vehicle < ApplicationRecord
  enum vehicle_type: {
    jeep: 0,
    car: 1,
    sumo: 2
  }

  def location
    "Kathmandu"
  end

  def check_in
    Time.now
  end

  def check_out
    Time.now
  end
end
