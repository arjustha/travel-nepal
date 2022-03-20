# frozen_string_literal: true

# model for posts
class Post < ApplicationRecord
  # mount_uploader :, PhotoUploader
  has_one_attached :image
  has_many_attached :pictures
  belongs_to :user

  scope :latest, -> { order(created_at: :desc).limit(5) }

  def image_as_thumbnail
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def pictures_as_thumbnails
    pictures.map do |picture|
      picture.variant(resize_to_limit: [150, 150]).processed
    end
  end
end
