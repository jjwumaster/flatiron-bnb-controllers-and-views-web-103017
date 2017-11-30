class CitiesController < ApplicationController
  def index
    @cities = City.all

  end

  def new

  end

  def create

  end

  def show
    @city = City.find(params[:id])
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def city_params
    params.require(:city).permit(:name)
  end
end
