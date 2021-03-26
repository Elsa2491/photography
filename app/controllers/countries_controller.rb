class CountriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_country, only: %i[edit update destroy]

  def index
    @countries = policy_scope(Country).order(created_at: :asc)
  end

  def show
    @country = Country.find(params[:id])
    if @country.regions.count == 1
      redirect_to region_path(@country.regions.first)
    end
  end

  def new
    @country = Country.new
    authorize @country
  end

  def create
    @country = Country.create(country_params)
    @country.user = current_user
    authorize @country
    if @country.save
      redirect_to root_path, notice: "Pays créé"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @country.update(country_params)
    redirect_to root_path, notice: "Pays modifié"
  end

  def destroy
    @country.user = current_user
    @country.destroy
    redirect_to root_path, notice: "Pays supprimé"
  end

  private

  def country_params
    params.require(:country).permit(:title, :description, :image)
  end

  def set_country
    @country = Country.find(params[:id])
    authorize @country
  end
end
