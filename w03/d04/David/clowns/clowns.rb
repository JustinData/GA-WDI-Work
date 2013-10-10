require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "DtotheFP",
  password: "",
  database: "sandbox"
  )

class Clown < ActiveRecord::Base
  #class method -- says there is a column clown_car_id in the clowns table
  belongs_to :clown_car
end


class ClownCar < ActiveRecord::Base
  has_many :clowns
end

binding.pry
