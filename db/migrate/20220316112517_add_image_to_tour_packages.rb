# frozen_string_literal: true

class AddImageToTourPackages < ActiveRecord::Migration[6.1]
  def change
    add_column :tour_packages, :image, :string
  end
end
