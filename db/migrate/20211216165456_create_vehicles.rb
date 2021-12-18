# frozen_string_literal: true

class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :driver
      t.string :licence_plate
      t.string :contact

      t.timestamps
    end
  end
end
