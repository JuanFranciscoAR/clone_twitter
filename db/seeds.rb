# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# db/seeds.rb
require 'faker'

# Crea colaboradores con nombres, correos electrónicos y direcciones aleatorias
50.times do
    username = Faker::Name.name
    description = Faker::Lorem.paragraphs

Clone.create(
    username: username,
    description: description,

)
end


