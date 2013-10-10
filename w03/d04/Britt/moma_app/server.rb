require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "brittlewis",
  password: "",
  database: "moma_db"
)

require_relative './models/painting'
require_relative './models/artist'

binding.pry