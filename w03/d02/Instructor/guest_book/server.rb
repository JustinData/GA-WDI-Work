require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jeff",
  :password => "",
  :database => "sandbox"
)

require_relative './models/entry'

# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"

# Index

get "/guest_book" do
  names = Entry.all.pluck(:name)
  "These people have registered: #{names.join(",")}"
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = Entry.find(id)

  if entry
    entry.name
  else
    "NONE FOUND SILLY!"
  end
end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

post "/guest_book" do
  Entry.create({name: params[:name]})
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