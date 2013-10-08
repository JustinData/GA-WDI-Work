#add delete function, annoying entries

# Note: because I did not want to change already existing
# Entry / entries, I used InstaEntry instead
require 'sinatra'
require 'sinatra/reloader'
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

require_relative './models/insta_entry'

get '/' do 
	redirect('/all')
end

get '/all' do 
	@insta_entries = InstaEntry.all

	erb :index
end

