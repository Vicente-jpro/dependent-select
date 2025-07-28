class CountryController < ApplicationController
  def provinces
    @provinces = Province.where(country_id: params[:country_id])
    render partial: "province/province_select", locals: { provinces: @provinces }
  end
end
