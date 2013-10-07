require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'httparty'
require 'json'
require 'pg'
require 'pry'

def get_data
	db_conn = PG.connect( dbname: "movies_db", host: "localhost" )
	@result = db_conn.exec( "SELECT * FROM movies;" )

	db_conn.close
end

get '/' do 
	@h1 = "Welcome to Movies.io"
	erb :home
end

get '/movies/search' do 
	@h1 = "Search A Title"
	erb :form
end

post '/movies' do 
	# retrieving info from omdb
	name = params[:title].gsub(" ","+")
	url = "http://www.omdbapi.com/?t=#{name}"
	response = HTTParty.get(url)
	parsed = JSON(response)

	# assign to variables
	title = parsed["Title"]
	year = parsed["Year"]
	poster = parsed["Poster"]

	# connect to DB
	db_conn = PG.connect( dbname: "movies_db", host: "localhost" )
	result = db_conn.exec( "SELECT * FROM movies;" )

	#store id as usuable var
	@id = result.values.last[0]

	# write to DB
	db_conn.exec( "INSERT INTO movies (title,year,poster_link) VALUES ('#{title}', #{year}, '#{poster}');" )

	db_conn.close

	redirect to("/movies/#{@id}")
end

get '/movies/:id' do 
	@h1 = "Your Movie Below!"
	
	# connect to DB
	get_data

	erb :specific
end

get '/movies' do
	@h1 = "All Movies Below!"

	# connec to DB
	get_data

	erb :all
end

