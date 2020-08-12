puts "Cleaning database..."
Restaurant.destroy_all
# ["chinese", "italian", "japanese", "french", "belgian"]
puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
kfc =  { name: "KFC", address: "16 Villa Gaudelet, Paris 75011", category: "french" }
macdo =  { name: "McDonalds", address: "78 rue Ferrandière, Lyon 69002", category: "french" }
otacos =  { name: "O'Tacos", address: "15 rue du Lac, Paris 75008", category: "belgian" }

[ dishoom, pizza_east, kfc, macdo, otacos ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"