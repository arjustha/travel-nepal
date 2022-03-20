# frozen_string_literal: true

##
#
# this is the home page
class HomepagesController < ApplicationController
  def index
    if current_user
      @destinations = Destination.all
    else
      @xyz = "Please log in"
      redirect_to new_user_session_path
    end
    @posts = Post.latest
  end
end
