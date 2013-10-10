require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "Paris",
password: "",
database: "moma_db"
  )

# be sure to camel case
class Painting < ActiveRecord::Base
  belongs_to :artist
end

class Artist < ActiveRecord::Base
  has_many :paintings
end

binding.pry
# gogh = Artist.new("Vincent van Gogh", "Dutch", "March 30, 1853")

# rum = Painting.new("Still Life with a Bottle of Rum", 1911, "http://upload.wikimedia.org/wikipedia/en/7/7f/Pablo_Picasso%2C_1911%2C_Still_Life_with_a_Bottle_of_Rum%2C_oil_on_canvas%2C_61.3_x_50.5_cm%2C_Metropolitan_Museum_of_Art%2C_New_York.jpg")

#   irises = Painting.new("Irises", 1889, "http://www.vangoghgallery.com/catalog/image/0608/Irises.jpg")

#   potato = Painting.new("The Potato Eaters", 1885, "http://upload.wikimedia.org/wikipedia/commons/b/b1/Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg")


# gogh.save
# rum.save
# irises.save
# potato.save