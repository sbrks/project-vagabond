class CitiesController < ApplicationController

  def index
    @cities = Cities.all
    render :index
  end

end
