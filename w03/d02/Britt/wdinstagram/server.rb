require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# establish active record base connection to database
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "brittlewis",
  :password => "",
  :database => "wdinstagram"
)

# Displays all entries
get "/?" do
	erb :index
end

# Displays a form to create a new entry
get "/new/?" do
	erb :form
end

# Creates a new entry & saves it to database
post "/create/?" do; end

# Displays a particular entry
get "/show/:id?" do; end