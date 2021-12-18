# frozen_string_literal: true

##
#
# this is the home page
class HomepagesController < ApplicationController
  def index
    if current_user
      @destinations = Destination.all
      @success_message = 'You are logged in.'
    else
      @xyz = 'hello hello. login garnu pardaina??'
      redirect_to new_user_session_path
    end
  end
end
