require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pg'
require 'pry'

get '/' do
  erb :welcome
end

get '/movies/search' do
  erb :form
end

post '/movies' do
  if params[:title]
    name = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{name}"
    html = HTTParty.get(url)
    hash = JSON(html)

    db = PG.connect( dbname: 'movies_db', host: 'localhost' )
    r = db.exec( "INSERT INTO movies (title, year, poster) VALUES ( '#{hash['Title']}', '#{hash['Year']}', '#{hash['Poster']}' );" )

    binding.pry

    id = db.exec( "SELECT lastval();" )[0]['lastval'] # get the last serial (id) created
    db.close

    #binding.pry
  end

  redirect to("/movies/#{id}")
end

get '/movies' do

  db = PG.connect( dbname: 'movies_db', host: 'localhost' )
  @all_movies = db.exec( "SELECT * FROM movies;")
  db.close

  erb :all_movies
end

get "/movies/:id" do
  db = PG.connect( dbname: 'movies_db', host: 'localhost' )
  @movie_array = db.exec( "SELECT * FROM movies WHERE id = #{:id};" )
  db.close
  erb :movie
end

