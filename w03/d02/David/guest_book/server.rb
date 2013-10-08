require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "DtotheFP",
  :password => "",
  :database => "sandbox"
)

require_relative './models/entry'
binding.pry


puts Musical.find(1)

binding.pry


get "/guest_book" do

end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do

end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

post "/guest_book" do

end

# Expect params[:name] == new_name
put "/guest_book/:id" do

end

delete "/guest_book/:id" do

end