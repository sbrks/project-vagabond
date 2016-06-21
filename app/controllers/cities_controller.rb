class CitiesController < ApplicationController

  def index
    @cities = Cities.all
    render :index
  end

  def show
    @city = Cities.find(params[:id])
  end

end
