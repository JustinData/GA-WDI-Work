require "sinatra"
require "sinatra/reloader"
require "httparty"
require "json"
require "pg"
require "pry"

get "/" do
   erb :index
end

get "/movies/search" do
   erb :search
end

post "/movies" do
   name = params[:title].gsub(" ", "+")
   url = "http://www.omdbapi.com/?t=#{name}"

   # Get the movie's data from API
   response = HTTParty.get(url)
   parsed = JSON(response)

  # Create DB
    # CREATE DATABASE movies_db;
    # CREATE TABLE receipts (
    #   id serial PRIMARY KEY,
    #   title varchar(50) NOT NULL,
    #   year integer NOT NULL,
    #   genre varchar(70) NOT NULL,
    #   rating float NOT NULL,
    #   poster varchar(200) NOT NULL
    # );

    # Connect to DB
    db_conn = PG.connect(dbname: "movies_db")

    # Create a hash to hold the info we want to save
    new_movie = {}
    new_movie[:title] = parsed["Title"] || "Title"
    new_movie[:year] = parsed["Year"] || "Year"
    new_movie[:genre] = parsed["Genre"] || "Genre"
    new_movie[:rating] = parsed["imdbRating"] || "imdbRating"
    new_movie[:poster] = parsed["Poster"] || "Poster"

    # binding.pry

    query = "INSERT INTO movie_info "
    query += "(title, year, genre, rating, poster) VALUES"
    query += "("
    query += "'#{new_movie[:title]}', #{new_movie[:year]}, '#{new_movie[:genre]}', #{new_movie[:rating]}, '#{new_movie[:poster] }'"
    query += ");"
    db_conn.exec(query)

   #movie_string = db_conn.exec("SELECT * FROM movie_info;") where...

    #@id = 

    # Close DB
    db_conn.close

  # Redirect to the page that shows the movie searched
  # redirect "/movie/#{@id}"
  redirect "/movie/1"
end

get "/movies" do

    db_conn = PG.connect(dbname: "movies_db")
    result = db_conn.exec("SELECT * FROM movie_info")

    result.each do |row|

      output_str = "Number #{row['id']}: #{row['title']} ("
      output_str += "#{row['year']}) is a #{row['genre']} movie "
      output_str += "with a rating of #{row['rating']} and the poster can be found here: #{row['poster']}"

      @output_str = output_str
    end
  
    # binding.pry

    # Close DB
    db_conn.close

   erb :all_movies
end

get "/movie/:id" do 
   # file = File.new("movies.txt", "a+")
   # file.each do |line|
   #    if line.split(",")[0] == params[:id]
   #       @movies_array = line.split(",")
   #    end
   # end
   # file.close

   erb :movie
end

get "/movies/recent" do 

  erb :recent
end

get "/movies/funny" do 

  erb :funny
end

get "/movies/good" do 

  erb :good
end