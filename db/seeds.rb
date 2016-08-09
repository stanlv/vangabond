# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Car.create(seats: 2, brand: "VW", model: "combi", year_of_production: "1995-08-04", description: "Best car ever", location: "Lisbon", category: "Surf", price_per_day: 56, km: 58000, user_id: 1)
