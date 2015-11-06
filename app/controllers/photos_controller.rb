class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    if params[:user_id]
      @photos = User.find(params[:user_id]).photos
    elsif params[:fousegroup_id]
      @photos = Fousegroup.find(params[:fousegroup_id]).photos
    elsif params[:fouse_id]
      @photos = Fouse.find(params[:fouse_id]).photos
    else
      @photos = Photo.all
    end
  end

  def show
  end

  def new
    if params[:user_id]
      @photo = Photo.new(imageable_type: "User")
    elsif params[:fousegroup_id]
      @photo = Photo.new(imageable_type: "Fousegroup")
    elsif params[:fouse_id]
      @photo = Photo.new(imageable_type: "Fouse")
    end
  end

  def create
    if params[:user_id]
      @photo = Photo.new(imageable_id: params[:user_id], imageable_type: "User", url: photo_param)
    elsif params[:fousegroup_id]
      @photo = Photo.new(imageable_id: params[:fousegroup_id], imageable_type: "Fousegroup", url: photo_param)
    elsif params[:fouse_id]
      @photo = Photo.new(imageable_id: params[:fouse_id], imageable_type: "Fouse", url: photo_param)
    end

    if @photo.save
      redirect_to(action: "index")
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @photo.destroy
    redirect_to(action: "index")
  end

  private
  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_param
    params.require(:photo).permit(:url)
  end
end
