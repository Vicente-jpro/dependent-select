class CityController < ApplicationController
  def index
    @cities = City.where(province_id: params[:province_id])
  end
end
