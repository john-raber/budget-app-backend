# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  'john',
  'volcanicbadger',
  'grubblingwalrus'
]

users.each do |u|
  User.create({
    username: u,
    email: "#{u}@example.com",
    password_digest: BCrypt::Password.create('hi')
  })
end

Budget.create({ name: 'john\'s budget', user_id: 1 })
Budget.create({ name: 'badger\'s budget', user_id: 2 })
Budget.create({ name: 'walrus\'s budget', user_id: 3 })
