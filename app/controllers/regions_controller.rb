class RegionsController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @region = Region.new
  end

  def create
    @country = Country.find(params[:country_id])
    @region = Region.new(region_params)
    @region.country = @country
    if @region.save
      redirect_to country_path(@country)
    else
      render :new
    end
  end

  private

  def region_params
    params.require(:region).permit(:title, :description)
  end
end
