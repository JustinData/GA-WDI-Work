require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :square
end

get '/multiples' do
  @number_squares = params[:num]
erb :multiples
end