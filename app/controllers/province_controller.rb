class ProvincesController < ApplicationController
  def index
    @provinces = Province.where(country_id: params[:country_id])
    respond_to do |format|
      format.html
      format.json { render json: @provinces.select(:id, :name_province) }
    end
  end

  def cities
    @province_id = params[:province_id]
    @city = City.new
    render partial: "city/city_select", locals: { province_id: @province_id, city: @city }
  end
end
