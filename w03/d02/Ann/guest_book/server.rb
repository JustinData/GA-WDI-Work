require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'erb'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ann", 
  :password => " ", 
  :database => "sandbox"
  )

require_relative './models/entry'

# Create
# Read
# Update
# Destroy
# Guest Book entries


# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"

# { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# Index
  
get "/guest_book/" do
  @entries = Entry.all 

  erb :index 
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
  @entry = Entry.find(params[:id])
 
  erb :show 
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