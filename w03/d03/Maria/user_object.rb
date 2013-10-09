require 'faker'
require_relative 'user'

for x in 1..50 do 

 t_id = x
 name = Faker::Name.name
 steet = Faker::Address.street_adress
 email = Faker::Internet.email
 user_object = User.new(id, name, street_address, email )
end