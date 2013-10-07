require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pg'
require 'pry'

DATABASENAME = "movies"
db_conn = PG.connect( dbname: DATABASENAME + "_db" )

get "/" do
  erb :index
end

get "/movies" do
  @results = db_conn.exec("SELECT * FROM movies;")
  erb :movies
end

get "/movies/search" do
  erb :search
end

post "/movies" do 
  name = params[:title]
  name = name.gsub(" ", "+")
  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)
  parsed = JSON(response)
  
  query_str = "INSERT INTO movies "
  query_str += "(title, year, poster) VALUES "
  query_str += "('#{parsed["Title"]}', '#{parsed["Year"]}', '#{parsed["Poster"]}');"
  db_conn.exec( query_str )
  #finds ID of last entered movie and redirects to that page
  results = db_conn.exec( "SELECT lastval();")
  id = results[0]["lastval"]
  redirect "/movies/#{id}"
end

get "/movies/:id" do 
  id = params[:id]
  #gets a row of the most recently entered movie
  @results =  db_conn.exec( "SELECT * FROM movies WHERE id = lastval();")
  binding.pry
  erb :movies
end

