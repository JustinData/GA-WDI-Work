require "sinatra"
require "sinatra/reloader" 
require "pry" 

# get ("/") do
#   "<doctype html><html><head></head><body>This is the output!!<body></html>"
  
# end

get( "/profiles/ann-margret" ) do
  output_name = "Ann Margret"
  output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"

  output_string = "<!doctype html><html><head></head>"
  output_string += "<body><h1>#{output_name}</h1>#{output_img}</body></html>"
end

