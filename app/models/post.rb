# frozen_string_literal: true

class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  scope :latest, -> { order(created_at: :desc).limit(5) }
end
