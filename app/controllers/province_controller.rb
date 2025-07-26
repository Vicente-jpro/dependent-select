class ProvinceController < ApplicationController
  def index
      @provinces = Province.where(country_id: params[:country_id])
  end

  def cities
     redirect_to city_index_path(province_id: params[:province_id])
  end
end
