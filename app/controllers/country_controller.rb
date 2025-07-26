class CountryController < ApplicationController
  def provinces
     redirect_to province_index_path(country_id: params[:country_id])
  end
end
