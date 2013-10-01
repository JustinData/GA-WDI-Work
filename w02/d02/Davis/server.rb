require 'sinatra'
require 'sinatra/reloader'
require 'pry'

#instead of writing path ie '/folder/file' etc
get '/profiles/:profile_name' do
	#take 2nd slash and put in into params hash
	if params[:profile_name] == "david-moyes"
		output_name = "Davis Moyes"
		output_img = "<img src='http://news.bbcimg.co.uk/media/images/67489000/jpg/_67489523_davidmoyes.jpg' />"
	elsif params[:profile_name] == "elvis"
		
	end

	output_string = "<!doctype html><html><head></head>"
	output_string += "<body><h1>#{output_name}</h1>#{output_img}</body></html>"

	output_string
end

