require "sinatra"
require "sinatra/reloader" 
require "pry"

get ( "/profiles/paul_newman" ) do
  output_name = "Paul Newan"
  output_img = "<img src="http://jrarcieri.files.wordpress.com/2008/09/paul-newman.jpg")"

  output_string = "<!doctype html><html><head></head>"
  output_string += "<body><h1>#{output_name}"<p> This is the body </></h1></body>

end