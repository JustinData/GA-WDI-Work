require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'


get "/" do   
 @greeting = "Welcome to Movies.io"
 @search = "/movies/search"
  erb :index
end

get "/movies/search" do
  erb :forms
end

post "/movies" do
# grab the info from omd
# save to the txt
# display info on the id page.

##### HTTP PARTY!!!!!#####
name = params[:title].gsub(" ", "+")
url = "http://www.omdbapi.com/?t=#{name}"
response = HTTParty.get(url)
parsed_movie_info = JSON(response)
# movie_info is a hash
# MISSING SOMETHING IN HERE TO CONNECT THE HASH TO MOVIES.TXT

# Count the number of lines in the file to figure out what id we should assign
  lines_in_file = 0
  file = File.new("movies.txt", "a+")
  file.each do |line|
    lines_in_file += 1
  end
  file.close
  id = lines_in_file + 1

  # Create an array to hold the info we want to save
  movies_array = []
  movies_array << id
  # movies << params["year"]
  # movies << params["poster"]
  # movies << params["title"]
 
  movies_array << parsed_movie_info["Year"]
  movies_array << parsed_movie_info["Poster"]
  movies_array << parsed_movie_info["Title"]

 # Write the info to the csv
 file = File.new("movies.txt", "a+")
  file.puts movies_array.join(", ")
  file.close
  #redirect to the page that shows the single movie
  redirect to("/movies/#{id}")
end

get "/movies" do
  @all_movies = []
  file = File.new("movies.txt", "a+")
  file.each do |line|
    @all_movies << line
  end
  file.close
  erb :allmovies
end

get "/movies/:id" do   
  file = File.new("movies.txt", "a+")
  file.each do |line|
    if line.split(",")[0] == params[:id] 
    @movies_array = line.split(",")
    end
  end
  file.close 
  erb :singlemovie
end



# <% @all_receipts.each do |receipt| %>
#   <% @receipt_array = receipt.split(",") %>
#   <%= erb :receipt %>
# <% end %>



# get '/receipts' do
#   @all_receipts = []
#   file = File.new("receipts.txt", "a+")
#   file.each do |line|
#     @all_receipts << line
#   end
#   file.close
#   erb :all_receipts
# end

# get "/receipts/:id" do
#   file = File.new("receipts.txt", "a+")
#   file.each do |line|
#     if line.split(",")[0] == params[:id]
#       @receipt_array = line.split(",")
#     end
#   end
#   file.close
#   erb :receipt
# end






