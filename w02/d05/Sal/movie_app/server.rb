require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'


get ("/") do 
	erb :index
end

get ("/movies/search") do
	erb :form
end

post ("/movies") do 
	name = params[:title].gsub(" ", "+")
	url = "http://www.omdbapi.com/?t=#{name}"
	response = HTTParty.get(url)
	parsed = JSON(response)

	lines_in_file = 0
    file = File.new("movies.txt", "a+")
    file.each do |line|
      lines_in_file += 1
    end
    file.close
    id = lines_in_file + 1

	movie_info = []
	movie_info << id 
	movie_info << parsed["Title"]
	movie_info << parsed["Year"]
	movie_info << parsed["Poster"]

	file = File.new("movies.txt", "a+")
    file.puts movie_info.join(",")
    file.close

    redirect to ("/movies")
end

get ("/movies") do 
	@all_movies = []
 	file = File.new("movies.txt", "a+")
    file.each do |line|
    @all_movies << line
  end
  	file.close
  erb :all_movies
end

get ("/movies/:id") do 
  file = File.new("movies.txt", "a+")
  file.each do |line|
    if line.split(",")[0] == params[:id]
      @movie_info = line.split(",")
    end
  end
  file.close
  erb :movie
end


