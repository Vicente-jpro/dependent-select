class CitiesController < ApplicationController
  def index
    @cities = City.where(province_id: params[:province_id])
    respond_to do |format|
      format.html
      format.json { render json: @cities.select(:id, :name_city) }
    end
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to city_index_path(province_id: @city.province_id), notice: "City was successfully created."
    else
      render :cities
    end
  end

  private
  def city_params
    params.require(:city).permit(:name_city, :province_id)
  end
end
