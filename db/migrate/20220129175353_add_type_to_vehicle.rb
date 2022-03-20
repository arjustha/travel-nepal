# frozen_string_literal: true

class AddTypeToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :type, :integer, default: 0
  end
end
