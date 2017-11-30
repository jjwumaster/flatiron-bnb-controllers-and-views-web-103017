class CitiesController < ApplicationController
  def index
    @cities = City.all

  end

  def new

  end

  def create

  end

  def show
    if params[:start_date]
      @city = City.find(params[:id])
      @filtered = @city.city_openings(params[:start_date], params[:end_date])
    else
      @city = City.find(params[:id])
    end
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
