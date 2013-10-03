require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require "httparty"

get "/" do
  erb :index
end

# http://localhost:4567/stocks?stock_symbol=GOOG

get "/stocks" do
  binding.pry
  @stock_symbol = params[:stock_symbol]
  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
  @price = response["Data"]["LastPrice"]
  @random = params[:stuff]
  erb :stocks
end