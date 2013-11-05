require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

post '/' do
  # accept JSON, XML, soemthing else
  # default: form-encoded

  binding.pry
end