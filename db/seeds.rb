puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",
    phone_number: "01 00 01 02 03",
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "japanese",
    phone_number: "03 00 01 02 03",
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "italian",
    phone_number: "04 00 01 02 03",
  },
    {
    name:         "L'entrecôte",
    address:      "Place pourrie 44000 Nantes",
    category:     "chinese",
    phone_number: "02 00 01 02 03",
  },
    {
    name:         "L'Atlantide'",
    address:      "2 route de Saint Joseph 44200 Nantes",
    category:     "belgian",
    phone_number: "05 00 01 02 03",
  },
    {
    name:         "Chez Lulu",
    address:      "route de Sure 44600 Ancenis",
    category:     "french",
    phone_number: "01 20 01 02 03",
  },
    {
    name:         "Doner Kebab",
    address:      "Route de Vannes 44800 Saint-Herblain",
    category:     "japanese",
    phone_number: "08 00 01 02 03",
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
