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

  def edit
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])
    @region.update(region_params)
    redirect_to countries_path(@country)
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to countries_path(@country)
  end

  private

  def region_params
    params.require(:region).permit(:title, :description)
  end
end
