require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'
require "pg"

FILENAME = "movie_list"

get "/" do
  erb :greeting
end

get "/movies/search" do
  erb :form
end

post "/movies" do
  # file = File.new("movies.txt", "a+")
  db_conn = PG.connect( dbname: FILENAME + "_db", host: "localhost" )
  title = params[:title]
  title = title.gsub(" ", "+")

  url = "http://www.omdbapi.com/?t=#{title}"

  # http request to get the movie info
  response = HTTParty.get(url)

  # Fetches movie data from OMDB
  parsed = JSON(response)

  # set variables for the title, year, and poster
  title = parsed["Title"]
  year = parsed["Year"].to_i
  poster = parsed["Poster"]
  plot = parsed["Plot"]
  plot_reformatted = plot.to_s.gsub("'",'\\\'')

  query = "INSERT INTO movie_list "
  query += "(title, date, poster, plot) VALUES"
  query += "("
  query += "'#{title}', '#{year}', '#{poster}', '#{plot_reformatted}'"
  query += ");"

  # Error receieved here
  db_conn.exec( query )


  # file.close
  db_conn.close
  # file.puts movie_info

  # redirect to ("movies/#{id_num}")

end

# shows all movies
get "/movies" do
  erb :display_movies
  
  # * Using a erb "partial" here for a single movie may help you here to keep your code DRY. You'll be able to render that same erb template for EACH movie that you have to display.
end

get "/movies/:id" do

  if params[:id].to_i.is_a? Fixnum
    @id_num = params[:id]
    erb :display_one
  end

end
