### WDInstagram ###

require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :host => "localhost",
   :username => "RaleighD",
   :password => "",
   :database => "wdinstagram"
   )

require_relative "./models/entry"

# Index Page (Displays all entries)
get "/guest_book" do
  @entries = Entry.all

  erb :index
end

# New Page (Displays a form to create a new entry)
get "/guest_book/new" do
  erb :new
end

Create (Creates a new entry and saves it to the database)

# Show Page (Displays one particular entry)
get "/guest_book/:id" do
  @entry = Entry.find(params[:id])

  erb :show
end