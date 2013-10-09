require 'faker'
require_relative 'user'

for x in 1..50 do 

 id = x
 name = Faker::Name.name
 street = Faker::Address.street_address
 email = Faker::Internet.email_address
 user_object = User.new(id, name, street_address, email )
 user_hash[id] = user_object
 morning_user.insert
end

# also can be 
#(1..50).each do |n|
#etc like above

#open psql connect to db \c sandbox
#psql -d sandbox -h localhost -f schema.sql