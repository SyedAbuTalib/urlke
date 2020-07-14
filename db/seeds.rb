# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

links_list = [
  [ "g", "http://www.google.com" ],
  [ "f", "http://www.facebook.com" ],
  [ "r", "http://www.reddit.com" ],
  [ "b", "http://www.bing.com" ]
]

links_list.each do |s, l|
  Link.create(short_link: s, full_link: l)
end