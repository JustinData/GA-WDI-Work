require 'sinatra'
require 'active_record'
require 'pry'

# setup activerecord before app
#   not part of model
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "daviskoh",
  # no password because local connection
  :password => "",
  :database => "sandbox"
)

require_relative './models/entry'

binding.pry

# Create
# Read
# Update
# Destroy
# Guest Book entries
 
guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }
 
# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"
 
# { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }
 
# Index
 
get "/guest_book" do
  names = guest_book.values.join(", ")
  "These people have registered: #{names}"
end
 
# Show (just one entry)
# I know the key (or the id)
 
get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]
 
  if entry
    entry
  else
    "NONE FOUND SILLY!"
  end
end
 
# GET /guest_book/1
 
# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id
 
post "/guest_book" do
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]
end
 
# Expect params[:name] == new_name
put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end
 
delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end