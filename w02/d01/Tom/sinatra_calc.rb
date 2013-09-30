# require necessary files
require 'sinatra'
require 'pry'

# set the root route with a welcome message
get "/" do
  "Welcome to Tom's Calculator!!"
end

menu = { 1 => "Add", 2 => "Subtract", 3 => "Multiply", 4 => "Divide"}

get "/menu" do

end

