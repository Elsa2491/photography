class PhotosController < ApplicationController
  # def index
  #   @photos = Photo.all
  # end

  # def show
  #   @photo = Photo.find(params[:id])
  # end

  def new
    @country = Country.find(params[:country_id])
    @region = Region.find(params[:region_id])
    @photo = Photo.new
    authorize @photo
  end

  def create
    @country = Country.find(params[:country_id])
    @region = Region.find(params[:region_id])
    @photo = Photo.new(photo_params)
    @region.country = @country
    @photo.region = @region
    authorize @photo
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def photo_params
    params.require(:photo).permit(:title, :description)
  end
end
