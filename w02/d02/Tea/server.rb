require "sinatra"
require "sinatra/reloader"
require 'erb'
require "pry"

get '/' do   
  "don't you want somebody to love"
end

get '/want' do  
  "don't you want somebody to love" 
end

get '/need' do   
  "don't you need somebody to love"
end

get '/love' do  
  "wouldn't you love somebody to love" 
end

get '/find' do  
  "you better find somebody to love" 
end

get '/notfind' do   
  "you better not find somebody to love."
end