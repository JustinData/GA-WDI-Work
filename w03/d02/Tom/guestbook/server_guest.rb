require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'


#  This establishes a connection.  Base is the core object (module) within ActiveRecord
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "thomasbrennan",
    :password => "",
    :database => "sandbox"
  )


require_relative './models/entry'

#binding.pry

# Create
# Read
# Update
# Destroy
# Guest Book entries



# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"



# Index
get "/guest_book" do
  @entries = Entry.all
  erb :index
end

# show 1 guest book entry
get "/guest_book/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end


post "/guest_book" do

end

# Expect params[:name] == new_name
put "/guest_book/:id" do

end

delete "/guest_book/:id" do

end