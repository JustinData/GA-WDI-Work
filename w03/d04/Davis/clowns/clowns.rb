require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	adapter: "postgresql",
	host: "localhost",
	usernmae: "daviskoh",
	password: "",
	database: "sandbox"
)

class Clown < ActiveRecord::Base
	self.belongs_to :clown_car

	# essentially replace Postgres error msg w/ 'false' for readability
	validates :name, presence: true

	def speak
		"Hello, child - my name is #{self.name}"
	end
end

# NOTE: AR will turn into snake_case, then pluralize
class ClownCar < ActiveRecord::Base
	self.has_many :clowns

	validates :color, :capacity, presence: true

	def at_capacity?
		self.clowns.count >= self.capacity
	end
end

ClownCar.all.pluck(:color)

binding.pry
