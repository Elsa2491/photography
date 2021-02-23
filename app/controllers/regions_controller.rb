class RegionsController < ApplicationController
  before_action :set_region, only: %i[edit update destroy]

  def new
    @country = Country.find(params[:country_id])
    @region = Region.new
  end

  def create
    @country = Country.find(params[:country_id])
    @region = Region.new(region_params)
    @region.country = @country
    if @region.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @region.update(region_params)
    redirect_to root_path
  end

  def destroy
    @region.destroy
    redirect_to root_path
  end

  private

  def region_params
    params.require(:region).permit(:title, :description)
  end

  def set_region
    @region = Region.find(params[:id])
  end
end
