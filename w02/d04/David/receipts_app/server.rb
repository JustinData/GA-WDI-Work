require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  erb :index
end

get "/receipts/new" do
  erb :new
end

post "/receipts" do
  
  
end

get "/receipts" do

  erb :receipts
end

get "/receipts/:id" do
  
  erb :receipts
end