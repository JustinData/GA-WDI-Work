require 'faker'
require 'pry'

class User
	attr_reader :name, :address, :email

	def initialize(id, name,address,email)
		@id = id
		@name = name
		@address = address
		@email = email
	end

	def to_s
		"Name:#{@name} \nEmail: #{@email} \nAddress: #{@address}."
	end
end

@junk_data = {}

50.times do |i|
	id = i
	name = Faker::Name.name
	address = Faker::Address.street_address
	email = Faker::Internet.email

	@junk_data[id] = User.new(id, name, address, email)
	
end