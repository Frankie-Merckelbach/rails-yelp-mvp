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
    name:         'Panache',
    address:      'Ten Katemarkt 7, Amsterdam 1053BV',
    category:  'french',
    phone_number: '02053 87622'
  },
  {
    name:         'Spaghetteria',
    address:      'Janhanzestraat 231, Amsterdam Oud-West 1061BS',
    category:  'italian',
    phone_number: '0203012442'
  },
  {
    name:         'Sushi Sakura',
    address:      'Vijzelstraat, Amsterdam Centrum 1109KA',
    category:  'japanese',
    phone_number: '0205434422'
  },
  {
    name:         'The GoldenRiver',
    address:      'Brinklaan, Laren 1251EB',
    category:  'chinese',
    phone_number: '0355387965'
  },
  {
    name:         'Vlaams Plezier',
    address:      'Mechelselaan, Mechelen 1322WE',
    category:  'belgian',
    phone_number: '0304412272'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
