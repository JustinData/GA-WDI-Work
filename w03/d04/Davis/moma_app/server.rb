require 'sinatra'
require 'sinatra/reloader'
require_relative './moma.rb'


# homepage

# MENU:	
# add artist to database
	# via form
# search for artist
# search for specific work

# Features:
	# click artist to see works by that artist
	# click on nationality to see artists of that nationality


get '/' do 
	@h1 = "Welcome to iMuseumArtAppThingyable.io.ly"

	erb :home
end

# list all artists
get '/artist/all' do 
	@h1 = "All Artists Below:"
	@artists = Artist.all

	# binding.pry

	erb :artist_all
end

get '/artist/:name' do
	@name = params[:name]

	@target_artist = Artist.where(name: "#{@name}")[0]

	@h1 = "All works by #{@name} Below:"

	erb :artist_specific
end

get '/all_works' do 
	@h1 = "All Works Below:"

	erb :all_works
end