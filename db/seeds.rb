# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create

# puts "seeding"
# martin = User.create([{ first_name: "Martin" }, { last_name: "Boulland" }, { phone_number: "17" }, { winemaker: false }, { email: "martinboulland@gmail.com" }, { encrypted_password: "MarTin321" }])
# valentine = User.create([{ first_name: "Valentine" }, { last_name: "Cousin" }, { phone_number: "112" }, { winemaker: false }, { email: "valentinecousin@gmail.com" }, { encrypted_password: "CoucouVal56" }])
# luc = User.create([{ first_name: "Luc" }, { last_name: "Perrot" }, { phone_number: "15" }, { winemaker: true }, { email: "lucperrot@gmail.com" }, { encrypted_password: "luc.reverse" }])
# ermanno = User.create([{ first_name: "Ermanno" }, { last_name: "di Giulio" }, { phone_number: "06 1" }, { winemaker: false }, { email: "ermannodigiulio@gmail.com" }, { encrypted_password: "mineurisolé32" }])
# chaise = User.create([{ first_name: "Chaise" }, { last_name: "Basse" }, { phone_number: "17" }, { winemaker: true }, { email: "chaisebasse@gmail.com" }, { encrypted_password: "sound.mp3" }])

# chardonnay = Grapevine.create([{ name: "Domaine du Chêne Blanc" }, { grape_variety: "Chardonnay " }, { organic: false }, { color: "red" }, { area: "Languedoc Roussillon" }, { parcel_price: 3000 }, { parcel_stock: 10}])
# cabernet_sauvignon = Grapevine.create([{ name: "Château de l'Aube Étoilée" }, { grape_variety: "Cabernet Sauvignon" }, { organic: true }, { color: "white" }, { area: "IGP Calvados" }, { parcel_price: 1300 }, { parcel_stock: 5 }])
# pinot_noir = Grapevine.create([{ name: "Clos des Secrets Mystiques" }, { grape_variety: "Pinot Noir" }, { organic: false }, { color: "red" }, { area: "Vallée du Rhône" }, { parcel_price: 7000 }, { parcel_stock: 30 }])
# sauvignon_blanc = Grapevine.create([{ name: "Domaine de la Vigne d'Argent" }, { grape_variety: "Sauvignon Blanc" }, { organic: false }, { color: "rosé" }, { area: "Bordeaux" }, { parcel_price: 2050 }, { parcel_stock: 7 }])
# syrah = Grapevine.create([{ name: "Château des Brumes Enchantées" }, { grape_variety: "Syrah" }, { organic: true }, { color: "rosé" }, { area: "Bourgogne" }, { parcel_price: 2900 }, { parcel_stock: 15 }])
# puts "done"

# chardonnay.user_id = martin
# cabernet_sauvignon.user_id = valentine
# pinot_noir.user_id = luc
# sauvignon_blanc.user_id = ermanno
# syrah.user_id = chaise

Grapevine.destroy_all
User.destroy_all

puts "seeding"

<<<<<<< HEAD
=======

>>>>>>> f870134bed8477f2e262c7ad97506b318012d26c
User.create!(first_name: "Ermanno", last_name: "di Giulio", phone_number: "06 1", winemaker: false, email: "digiulioermanno@gmail.com", password: "Magrossegrappe")

puts "done"
