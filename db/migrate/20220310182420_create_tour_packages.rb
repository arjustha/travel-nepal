class CreateTourPackages < ActiveRecord::Migration[6.1]
  def change
    create_table :tour_packages do |t|
      t.string :name
      t.text :description
      t.references :post, null: false, foreign_key: true
      t.float :price
      t.date :available_dates, array: true, default: [].to_yaml

      t.timestamps
    end
  end
end
