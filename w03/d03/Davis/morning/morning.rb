require 'faker'
require 'pry'

class User
	def initialize(id, name, street_address, email_address)
		@id = id
		@name = name
		@street_address = street_address
		@email_address = email_address
	end

	def to_s
		"Person #{@name} has id of #{@id} lives in #{@street_address}. Contact at #{@email_address}."
	end
end

hash = {}

(1..50).each do |n|
	hash[n] = User.new(n, Faker::Name.name, Faker::Address.street_address, Faker::Internet.email)
end

