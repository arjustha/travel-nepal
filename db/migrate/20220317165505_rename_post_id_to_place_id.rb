class RenamePostIdToPlaceId < ActiveRecord::Migration[6.1]
  def change
    remove_reference :tour_packages, :post, index: true, foreign_key: true
    add_reference :tour_packages, :destination, index: true
  end
end
