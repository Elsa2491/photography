class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_photo, only: %i[edit update destroy]

  def index
    @photos = policy_scope(Photo).order(created_at: :desc)
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
      redirect_to region_path(@region), notice: "Photo créée"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @photo.update(photo_params)
    redirect_to region_path(@photo.region), notice: "Photo modifiée"
  end

  def destroy
    @photo.destroy
    redirect_to region_path(@photo.region), notice: "Photo supprimée"
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
