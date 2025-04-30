# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[
  { email_address: "alex.fuchs970@gmail.com", password: "alexander", firstname: "Alexander", lastname: "Fuchs", rank: "chef" },
  { email_address: "a@a.a", password: "12345678", firstname: "Elias", lastname: "Schinkinger", rank: "chef" },
  { email_address: "g@g.g", password: "12345678", firstname: "Garry", lastname: "Wart", rank: "geraetewart" },
  { email_address: "f@f.f", password: "12345678", firstname: "Feuer", lastname: "Mann", rank: "feuerwehrmann" }
].each do |u|
  User.create! u
end
