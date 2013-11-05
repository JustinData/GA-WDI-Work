require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

post "/" do
  # Accept JSON or
  # Accept XML
  # pr accept something else

  # DEFAULT - form-encoded
  binding.pry
end