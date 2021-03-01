class RegionsController < ApplicationController
  # before_action :set_region, only: %i[edit update destroy]
  before_action :set_region, only: %i[edit update]
  def show
    @country = Country.find(params[:country_id])
    @region = Region.find(params[:country_id])
    @region.country = @country
  end

  def new
    @country = Country.find(params[:country_id])
    @region = Region.new
    authorize @region
  end

  def create
    @country = Country.find(params[:country_id])
    @region = Region.new(region_params)
    @region.country = @country
    authorize @region
    if @region.save
      redirect_to country_path(@country)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @region.update(region_params)
    redirect_to country_path(@country)
  end

  def destroy
    if @region.destroy
      redirect_to country_path(@country)
    end
  end

  private

  def region_params
    params.require(:region).permit(:title, :description)
  end

  def set_region
    @region = Region.find(params[:id])
    authorize @region
  end
end
