# db/seeds.rb
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "0629210709",
    category:        "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  "0629210709",
    category:        "chinese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  "0629210709",
    category:        "belgian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
