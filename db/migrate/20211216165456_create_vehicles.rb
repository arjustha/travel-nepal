# frozen_string_literal: true

class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.integer :driver_age
      t.string :location
      t.string :check_in
      t.string :check_out
      t.string :contact

      t.timestamps
    end
  end
end
