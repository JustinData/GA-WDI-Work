# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Author.destroy_all

authors = [*1..10].reduce([]) { |arr, _| arr << Author.create(name: Faker::Name.first_name) }

authors.each do |author|
  20.times { Post.create(author: author, content: Faker::Lorem.paragraph) }
end