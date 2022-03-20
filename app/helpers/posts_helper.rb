# frozen_string_literal: true

# for post helper
module PostsHelper
  def post_thumbnail post
    img = post.image.present? ? post.image.thumb.url : "default.png"
    image_tag img, class: "post-thumb"
  end
end