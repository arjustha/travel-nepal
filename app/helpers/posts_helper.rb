# frozen_string_literal: true

# for post helper
module PostsHelper
  def post_thumbnail post
    img = post.photo.present? ? post.photo.thumb.url : "default.png"
    image_tag img, class: "post-thumb"
  end
end