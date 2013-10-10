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

helpers do
  # methods avail to views (sinatra feature)
end

get '/?' do
  # home/show all
end

get '/new/?' do
  # display form
end

post '/new/:kind/?' do
  # accept params, save to db
  # ### OR ### #
  # bump back to form with error *shudders*
end

get '/show/:kind/:id/?' do
  # show particular painting/painter by id
end