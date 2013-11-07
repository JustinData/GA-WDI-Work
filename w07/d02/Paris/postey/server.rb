require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do 
  erb :index
end


post "/" do
  # accept JSON or
  # accept XML or
  
  binding.pry
end