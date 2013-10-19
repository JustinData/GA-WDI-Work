require 'sinatra'
require "sinatra/reloader"
require 'pry'

get "/citi" do
  erb :index
end

