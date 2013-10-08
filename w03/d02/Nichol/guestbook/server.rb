require 'sinatra'
require 'pry'
require 'active_record' 
 
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "wdi",
  :password => "",
  :database => "sandbox_db"
  )

require_relative './models/entry'

# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"


 
# Index
 
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