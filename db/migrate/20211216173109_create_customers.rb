class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :numbers
      t.references :destination, null: false, foreign_key: true
      t.string :contact_number

      t.timestamps
    end
  end
end
