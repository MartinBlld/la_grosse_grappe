# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Grapevine.create([{ grape_variety: "Martin" }, { organic: false }, { color: "red" }, { area: "Languedoc Roussillon" }, { parcel_price: 3000 }, { parcel_stock: 10}])
Grapevine.create([{ grape_variety: "Luc" }, { organic: true }, { color: "white" }, { area: "IGP Calvados" }, { parcel_price: 1300 }, { parcel_stock: 5 }])
Grapevine.create([{ grape_variety: "Valentine" }, { organic: false }, { color: "red" }, { area: "Vallée du Rhône" }, { parcel_price: 7000 }, { parcel_stock: 30 }])
Grapevine.create([{ grape_variety: "Ermanno" }, { organic: false }, { color: "rosé" }, { area: "Bordeaux" }, { parcel_price: 2050 }, { parcel_stock: 7 }])
Grapevine.create([{ grape_variety: "Chaisebasse" }, { organic: true }, { color: "rosé" }, { area: "Bourgogne" }, { parcel_price: 2900 }, { parcel_stock: 15 }])
