require 'sinatra'
require "sinatra/reloader"
require 'active_record'
require 'pry'



# establishes connection with ActiveRecord
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "Paris",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry'

# Create
# Read
# Update
# Destroy
# Guest Book entries

get "/guest_book" do
  # @entries is an array
    @entries = Entry.all
  erb :index
end


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