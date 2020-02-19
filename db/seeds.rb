# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    category: 'chinese',
    phone_number: '0203040506'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    category: 'italian',
    phone_number: '0203040506'
  },
  {
    name:         'McDonald',
    address:      '56A Franklin st VIC',
    description:  'Shitty hamburger and chicken nugget.',
    category: 'belgian',
    phone_number: '0203040506'
  },
  {
    name:         'KFC',
    address:      '128 Bottom st VIC',
    description:  'Better chicken than McDonald, still need more coke to digest them all.',
    category: 'french',
    phone_number: '0203040506'
  },
  {
    name:         'Cheesy Pie',
    address:      '32 St Kilda st VIC',
    description:  'Mix cheese and pie together, not a bad ideas.',
    category: 'japanese',
    phone_number: '0203040506'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
