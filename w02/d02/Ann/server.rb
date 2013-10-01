require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do 
  output_name = "Charlie Chaplin Profile"
  output_img = "<img src = http://www.weeatfilms.com/wp-content/uploads/2011/12/Charlie-Chaplin-movies.jpg>"
 
  output_string = "<!doctype html> <html><head></head>"
  output_string += "<body><h1>#{output_name}</h1>#{output_img}<p>This is the output.</p></body></html>"

  #implicit return 
end 