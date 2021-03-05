class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_photo, only: %i[edit update destroy]

  def index
    @photos = policy_scope(Photo)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @region = Region.find(params[:region_id])
    @photo = Photo.new
    authorize @photo
  end

  def create
    @region = Region.find(params[:region_id])
    @photo = Photo.new(photo_params)
    @photo.region = @region
    authorize @photo
    if @photo.save
      redirect_to region_path(@region), notice: "Your photo was successfuly created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @photo.update(photo_params)
    redirect_to region_path(@photo.region), notice: "Your photo was successfuly updated"
  end

  def destroy
    @photo.destroy
    redirect_to region_path(@photo.region), notice: "Your photo was successfuly deleted"
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :image)
  end

  def set_photo
    @photo = Photo.find(params[:id])
    authorize @photo
  end
end
