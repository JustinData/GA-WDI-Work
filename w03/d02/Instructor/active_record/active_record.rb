require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new("./ar.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jeff",
  :password => "",
  :database => "sandbox"
)

class Musical < ActiveRecord::Base
end

syracuse = Musical.new({title: "Boys from Syracuse", year: 1938, composer: "Rodgers"})

syracuse.save

Musical.find_by(title: "Boys from Syracuse")

binding.pry