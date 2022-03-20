class TourPackage < ApplicationRecord
  has_one_attached :image
  has_many_attached :pictures
  belongs_to :destination

  def image_as_thumbnail
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def pictures_as_thumbnails
    pictures.map do |picture|
      picture.variant(resize_to_limit: [150, 150]).processed
    end
  end
end
