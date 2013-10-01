require "sinatra"
require "sinatra/reloader"
require "pry"

get( "/profiles/audrey-hepburn" ) do
  if params[:profile_name] == "audrey-hepburn"
  output_name = "Audrey Hepburn"
  output_image = <img src="http://25.media.tumblr.com/tumblr_m2dxr20CCe1qbilh4o1_500.jpg" width="400"/>
elsif params[:profile_name] == "elvis" 
  output_name = "Elvis Presley"
  output_image = <img src="#"/>
  "<!doctype html><html><head></head>"


output_string = "<!doctype html><html><head></head>"
output_string += "<body><h1>#{output_name}</h1>#{output_image}</body></html>" 

#implicit return
output_string

end


