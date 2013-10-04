require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'


# name = params[:title]name.gsub( " ", "+")

# url = "http://www.omdbapi.com/?=#{name}"
# response = HTTParty.get(url)
# parsed = JSON(response)

# puts parsed["Year"]
# puts parsed["Poster"]
# puts parsed["Title"]

# GET "/" => "Welcome to Movies.io", this page links to "/movies/search"

get "/" do
  erb :index
end

# GET "/movies/search" => Displays a form for new movies. Input for a movie title.

get "/movies/search" do
  erb :search_form
end

# POST "/movies" => Fetches movie data from OMDB and saves the title, year, and poster src as a CSV to movies.txt(and assign it a unique id) AND redirect the user to `movie/id`
# * You'll need to make an http request to get the movie info
# get "/stocks" do
# get "/" do 
#     erb :index
# end

# get "/stocks" do
#   @stock_symbol = params[:stock_symbol]
#   response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
#   @price = response["Data"]["LastPrice"]
#   erb :stocks
# end

#   * You'll need to count the number of lines in the file to figure out what id to assign the entry
#   * You'll need to add your entry as a CSV to movies.txt
#   * You should redirect to `movie/id` after your information has been posted
# Count the number of lines in the file to figure out what id we should assign
  #   lines_in_file = 0
  #   file = File.new("receipts.txt", "a+")
  #   file.each do |line|
  #     lines_in_file += 1
  #   end
  #   file.close
  #   id = lines_in_file + 1

  #   # Create an array to hold the info we want to save
  #   info = []
  #   info << id
  #   info << params[:store]
  #   info << params[:product]
  #   info << params[:price]

  #   # Write the info to the csv
  #   file = File.new("receipts.txt", "a+")
  #   file.puts info.join(",")
  #   file.close

  # # Redirect to the page that shows the receipt we just made
  # redirect to("/receipts/#{id}")
#end

post "/movies" do
  name = params[:title].gsub( " ", "+")

  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)
  parsed = JSON(response)
  @year = parsed["Year"]
  @poster = parsed["Poster"]
  @title = parsed["Title"]
  

  lines_in_file = 0

  file = File.new("movies.txt", "a+")

  file.each do |line|
    lines_in_file += 1
  end
  id = lines_in_file + 1

  # Create an array to hold the info we want to save
  info = []
  info << id
  info << @year
  info << @poster
  info << @title

  # Write the info to the csv

  file.puts info.join(",")
  file.close
  redirect "/movies/id"

end

# GET "/movies" => Print out information for all the movies. For each one, display the title, year and poster img.
#   * Using a erb "partial" here for a single movie may help you here to keep your code DRY. You'll be able to render that same erb template for EACH movie that you have to display.
# get '/receipts' do
#   @all_receipts = []
#   file = File.new("receipts.txt", "a+")
#   file.each do |line|
#     @all_receipts << line
#   end
#   file.close
#   erb :all_receipts
# end

get "/movies" do
   @all_movies = []
   file = File.new("movies.txt", "a+")
   file.each do |line|
   @all_movies << line
   end
   file.close
   erb :all_movies
end


# GET "/movies/:id" => Show a particular movie. Again, display the title, year and poster img.
# file = File.new("receipts.txt", "a+")
#   file.each do |line|
#     if line.split(",")[0] == params[:id]
#       @receipt_array = line.split(",")
#     end
#   end
#   file.close
#   erb :receipt

get "/movies/:id" do
  file = File.new("movies.txt", "a+")
   file.each do |line|
     if line.split(",")[0] == params[:id]
       @movie_array = line.split(",")
     end
   end
   file.close
   erb :movies
end

#1,Up,2009,http://ia.media-imdb.com/images/M/MV5BMTMwODg0NDY1Nl5BMl5BanBnXkFtZTcwMjkwNTgyMg@@._V1_SX300.jpg
