# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  name = Faker::Name.first_name
  last = Faker::Name.last_name
  Person.create(
    firstname: name,
    lastname: last,
    email: Faker::Internet.email(name: "#{name} #{last}", separators: "."),
  )
end
