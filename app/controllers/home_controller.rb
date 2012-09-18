class HomeController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :about_us]
  def index
   if current_user
     redirect_to current_user
    else
     @video_loaders = VideoLoader.all
     @video_loaders_last = @video_loaders.last
   end
  end

  def courses
  end

  def members
    @users= User.all
  end

  def terms
  end

  def tutorial
  end

  def about_us
  end
end
