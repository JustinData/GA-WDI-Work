require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "ezpawn",
	:password => "1234",
	:database => "sandbox"
	)

class Musical < ActiveRecord::Base
end

binding.pry