require 'faker'
require_relative 'user_db'
require_relative 'usersRandom'

require 'pry'

class User
  
  def initialize(id, name, street_address, email_address)
    @id = id
    @name = name
    @street_address = street_address
    @email_address = email_address
  end

  def to_s
    "Name: #{@name} Street: #{@street_address} Email: #{@email}"
  end
end

people = {}

person = User.new 
people.each do |person|
name = Faker::Name.name
address = Faker::Address.street_address
email_address = Faker::Internet.email

person << people

end

binding.pry