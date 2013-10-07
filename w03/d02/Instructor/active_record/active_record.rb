require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jeff",
  :password => "",
  :database => "sandbox"
)

class Movie < ActiveRecord::Base
end

singin_rain = Movie.new({title: "Singing in the Rain", year: 1952})

singin_rain.save