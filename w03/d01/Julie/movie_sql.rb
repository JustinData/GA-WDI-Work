require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require "pg"

FILENAME = "movies"


# GET "/" => "Welcome to Movies.io", this page links to "/movies/search"

get "/" do
  erb :index
end

# GET "/movies/search" => Displays a form for new movies. Input for a movie title.

get "/movies/search" do
  erb :search_form
end

post "/movies" do
  name = params[:title].gsub( " ", "+")

  #grabs :title and passes it in to a string query that fetches a string from the API
  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)

#turns info string into a searchable hash, then stores in variables
  parsed = JSON(response)
  @year = parsed["Year"].to_i
  @poster = parsed["Poster"]
  @title = parsed["Title"]

  # Create an array to hold the info we want to save
  info = {}
  info[:year] = @year
  info[:poster] = @poster
  info[:title] = @title



#enters info into db via info indexes
   db_conn = PG.connect( dbname: FILENAME + "_db")

    # query_str = "INSERT INTO movies "
    # query_str += "(year, poster, title) VALUES"
    # query_str += "( #{info[:year]}, '#{info[:poster]}', '#{info[:title]}');"
    # db_conn.exec ( "INSERT INTO")

    # db_conn.exec (query_str)
    db_conn.exec( "INSERT INTO movies (year, poster, title) VALUES (#{info[:year]},'#{info[:poster]}','#{info[:title]}');" )

     db_conn = PG.connect( dbname: FILENAME + "_db")

    @results = db_conn.exec ("SELECT * FROM  movies;")

  
# start line counter at 0 and then add to it for each line of the text doc
# stores in id
   # rows_in_file = 0

#   file = File.new("movies.txt", "a+")

      # @results.each |row|
      #    @id = row["id"]
      # end
    


#   Write the info to the csv

#   file.puts info.join(",")
#   file.close


  redirect "/movies/#{id}"
  db_conn.close

 

end

# GET "/movies" => Print out information for all the movies. 
#For each one, display the title, year and poster img.
get "/movies" do

  db_conn = PG.connect( dbname: FILENAME + "_db")

  @results = db_conn.exec ("SELECT * FROM  movies;")


#Iterates over each line of the text file and adds it to an array
   # @all_movies = []
   # # file = File.new("movies.txt", "a+")

   # file.each do |line|
   # @all_movies << line
   # end

   # file.close
   db_conn.close
   erb :all_movies

end


# GET "/movies/:id" => Show a particular movie. Again, display the title, year and poster img.


get "/movies/:id" do

  db_conn = PG.connect( dbname: FILENAME + "_db")

  results = db_conn.exec ("SELECT * FROM  movies;")

  # file = File.new("movies.txt", "a+")


  #  file.each do |line|
  #    if line.split(",")[0] == params[:id]
  #      @movie_array = line.split(",")
  #    end

  #  end
  #  file.close
  db_conn.close
   erb :movies
end

#1,Up,2009,http://ia.media-imdb.com/images/M/MV5BMTMwODg0NDY1Nl5BMl5BanBnXkFtZTcwMjkwNTgyMg@@._V1_SX300.jpg
