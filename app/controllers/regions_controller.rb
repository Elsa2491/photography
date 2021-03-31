class RegionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_region, only: %i[edit update destroy]

  def index
    @regions = policy_scope(Region).order(created_at: :desc)
  end

  def show
    @region = Region.find(params[:id])
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
      redirect_to country_path(@country), notice: "Région créée"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @region.update(region_params)
    redirect_to country_path(@region.country), notice: "Région modifiée"
  end

  def destroy
    @region.destroy
    redirect_to country_path(@region.country), notice: "Région supprimée"
  end

  private

  def region_params
    params.require(:region).permit(:title, :description, :image)
  end

  def set_region
    @region = Region.find(params[:id])
    authorize @region
  end
end
