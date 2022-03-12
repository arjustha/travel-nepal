# frozen_string_literal: true

# it is model for user
class User < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def username
    email.split ("@")[0].capitalize
  end

  has_one_attached :avatar
  after_commit :add_default_avatar, on: %i[create update]
  before_create :set_is_admin_false

  def avatar_thumbnail
    # if avatar.attached?
    #   avatar.variant(resize: "150*150!").processed
    # else
      "/default_profile.jpg"
    # end
  end

  def admin?
    is_admin
  end

  private

  def add_default_avatar
    return if avatar.attached?

    avatar.attach(
      io: File.open(
        Rails.root.join(
          "app", "assets", "images", "default_profile.jpg"
        )
      ), filename: "default_profile.jpg",
      content_type: "image/jpg"
    )
  end
end

def set_is_admin_false
  return if  is_admin?

  user.is_admin = false
end
