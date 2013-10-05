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

# ["Poster"]["Title"] 
# puts title["data"]


  erb :movies
end

post "/movies" do
# grab the info from omd
# save to the txt
# display info on the id page.

##### HTTP PARTY!!!!!#####
name = params[:title].gsub(" ", "+")
url = "http://www.omdbapi.com/?t=#{name}"
response = HTTParty.get(url)
parsed = JSON(response)
# parsed is a hash
# # #####WRITE EVERYTHING TO A FILE!######
  parsed = %x{wc -l movies.txt}.split[0].to_i
  movies = []
  movies << parsed + 1
  movies << params[:Year]
  movies << params[:Poster]
  movies << params[:Title]
  file = File.new("movies.txt", "a+")
  file.puts movies.join(", ")
  file.close

  redirect "/movies/:id"
  erb :movies
end

get "/movies/:id" do   
  # @greeting="Here is your movie!"
  @hash = {}
  @id = params[:id].to_i
  file = File.new("movies.txt", "r")
  file.each do |line|
  movies = line.split(",") 
  @hash[movies[0].to_i] = movies
  end
  erb :singlemovie
end









