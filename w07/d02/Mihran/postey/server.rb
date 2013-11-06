require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'pry'

@posts = []

get '/' do 
  @posts = posts 
  erb :index 
end 

post '/' do 
  # pizza = {toppings: ["cheese", "mushrooms"], price: 16.99}
  # JSON(pizza)
  posts << {title: params[:title], content: params[:content]}
  JSON(posts)

  #logic to append the new post to the posts array 
end