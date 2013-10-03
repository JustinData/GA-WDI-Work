require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'

# similar to guestbook

get '/' do 
	erb :welcome
end

get '/receipts/new' do 
	erb :instruction
end

