Rails.application.routes.draw do
  get "city/index"
  get "city/cities"
  get "country/provinces", to: "country#provinces", as: :country_provinces
  get "province/cities", to: "province#cities", as: :province_cities
  get "province/index", to: "province#index", as: :province_index

  get "home/index"

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

   root "home#index"
end
