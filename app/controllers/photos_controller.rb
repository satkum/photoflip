class PhotosController < ApplicationController
  def new
  	@photo = Photo.new
  end

  def show
  	@photo = Photo.find(params[:id])
  end
  
  def create
  	@photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to @photo
    else
      render 'not_saved'
    end	
  end

  def index
    @photos = Photo.all
  end

end
