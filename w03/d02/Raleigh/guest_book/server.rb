require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pry"

# ActiveRecord::Base -->
# module ActiveRecord
#   class Base
#   end
# end

ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :host => "localhost",
   :username => "RaleighD",
   :password => "",
   :database => "sandbox"
   )

require_relative "./models/entry"
# binding.pry

# Create
# Read
# Update
# Destroy
# Guest Book entries


# GET /guest_book
# List of all people who have ever registered

# Index
get "/guest_book" do
  @entries = Entry.all

  erb :index
end

# GET /guest_book/id
get "/guest_book/:id" do
  @entry = Entry.find(params[:id])

  erb :show
end

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

post "/guest_book" do
 
end

delete "/guest_book/:id" do
  
end