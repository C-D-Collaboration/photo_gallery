class PhotosController < ApplicationController
  def index
    all_the_photos = Photo.get_all_photos(params[:genre])
  end
end
