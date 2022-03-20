# frozen_string_literal: true

class AddDurationToTourPackages < ActiveRecord::Migration[6.1]
  def change
    add_column :tour_packages, :duration, :string
    add_column :tour_packages, :string, :string
  end
end
