class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @countries = Country.all
  end

  def show
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.create(country_params)
    @country.user_id = current_user.id
    if @country.save
      redirect_to root_path
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
    @country.user_id = current_user.id
    @country.destroy
    redirect_to root_path
  end

  private

  def country_params
    params.require(:country).permit(:title, :description)
  end

  def set_country
    @country = Country.find(params[:id])
  end
end
