# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cadastrando os paises..."
Country.find_or_create_by!(name_country: "Angola")
Country.find_or_create_by!(name_country: "Mocambique")

puts "Cadastrando as provincias..."
Province.find_or_create_by!(name_province: "Luanda", country_id: Country.first.id)
Province.find_or_create_by!(name_province: "Cabinda", country_id: Country.first.id)

puts "Cadastrando as cidades..."
City.find_or_create_by!(name_city: "Rangel", province_id: Province.first.id)
City.find_or_create_by!(name_city: "Kilamba", province_id: Province.first.id)

puts "Cadastramento concluido com sucesso!"
