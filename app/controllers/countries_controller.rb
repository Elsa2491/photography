class CountriesController < ApplicationController
  #before_action :set_country, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_country, only: %i[edit update destroy]

  def index
    @countries = policy_scope(Country)
  end

  def show
    @country = Country.find(params[:id])
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
      redirect_to root_path, notice: "Your country was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @country.update(country_params)
    redirect_to root_path
  end

  def destroy
    @country.user = current_user
    @country.destroy
    redirect_to root_path, notice: "Your country was successfully deleted"
  end

  private

  def country_params
    params.require(:country).permit(:title, :description)
  end

  def set_country
    @country = Country.find(params[:id])
    authorize @country
  end
end
