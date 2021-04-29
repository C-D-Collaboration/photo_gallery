class PhotosController < ApplicationController
  def index
    @photos = Photo.get_all_photos(params[:genre])
  end
end