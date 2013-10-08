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
	redirect('/show/all')
end

get '/show/all' do 
	@insta_entries = InstaEntry.all

	erb :index
end

# create link to here for other pages
# change to diff path???
get '/new' do 
	erb :new
end

post '/new' do
	insta_entry = InstaEntry.new(author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken])
	insta_entry.save

	redirect("/show/#{insta_entry.id}")
end

get '/show/:id' do 
	@id = params[:id].to_i

	erb :show
end