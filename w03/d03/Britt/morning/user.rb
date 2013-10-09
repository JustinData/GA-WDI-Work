require 'faker'
require 'pry'

class User
	attr_reader :name, :address, :email

	def initialize(name,address,email)
		@name = name
		@address = address
		@email = email
	end

	def to_s
		"#{@name} has an email #{@email} and lives at #{@address}."
	end
end

@junk_data = {}

50.times do |i|
	name = Faker::Name.name
	address = Faker::Address.street_address
	email = Faker::Internet.email

	@junk_data[i] = User.new(name, address, email)
	
end