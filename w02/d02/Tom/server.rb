require "sinatra"
require 'sinatra/reloader'
require 'pry'


# get the root route
get "/"  do
  "Happy Days Part 2"
end

get "/profiles/steve-mcqueen" do
  output_name = "Steve McQueen"
  output.img = "http://nygumbo.files.wordpress.com/2008/03/img_4.jpg"
end