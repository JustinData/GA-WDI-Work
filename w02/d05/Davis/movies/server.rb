require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'httparty'
require 'json'
require 'pry'

get '/' do 
	erb :home
end

get '/movies/search' do 
	erb :form
end


get '/movies/:id' do 
	erb :specific
end

post '/movies' do 
	#sorry Peter, page out of your solutions
	total_lines = 0 #iterator
	file = File.new("movies.txt", "a+")
	file.each do |line|
		total_lines += 1
	end
	@id = total_lines + 1

	name = params[:title].gsub(" ","+")
	url = "http://www.omdbapi.com/?t=#{name}"
	response = HTTParty.get(url)
	parsed = JSON(response)

	title = parsed["Title"]
	year = parsed["Year"]
	poster = parsed["Poster"]

	file = File.new("movies.txt", "a+")
	file.puts "#{@id},#{title},#{year},#{poster}"	

	file.close

	# binding.pry
	redirect to("/movies/#{@id}")
end

get '/movies' do 
	erb :all
end

