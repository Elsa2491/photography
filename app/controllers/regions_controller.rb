class RegionsController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @region = Region.new
  end

  def create
    @country = Country.find(params[:country_id])
    @region = Region.create(region_params)
    @region.country = @country
    if @region.save
      redirect_to country_path(@country)
    else
      render :new
    end
  end

  def edit
    @region = Region.find(params[:id])
    @country = Country.find(params[:country_id])
  end


  # solution belongs_to post
  # regions belongs_to country

  def update
    @region = Regions.find(params[:id])
    @country = Country.find(params[:country_id])
    @region.country = @country
    @region.update(region_params)
    redirecct_to country_region_path(@country)
  end


  def destroy
  end

  private

  def region_params
    params.require(:region).permit(:title, :description)
  end
end
