require 'sinatra'
require 'sinatra/reloader'

#GET / 
#=> User to be prestned with "Welcome to our Stock.ly"

get "/" do 
  erb :index 
end 

get "/stocks" do 
  erb :stocks
end 

