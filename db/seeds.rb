# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({
  username: "seriorfali",
  first_name: "Seri",
  last_name: "Orfali",
  email: "seriorfali@gmail.com",
  phone: '3473463347',
  account_type: "fouser"
})

Fousegroup.create({
  name: "Cloudview",
  community_type: "tower",
  style: "neo-futurist"
})

Photo.create({
  url: "http://i.imgur.com/nEcC1Q2.jpg",
  imageable_id: User.find_by(first_name: "Seri").id,
  imageable_type: "User",
  is_main: true
})
