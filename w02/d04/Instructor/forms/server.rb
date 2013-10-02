require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'httparty'
require 'pry'

get "/" do
  erb :index
end

post "/" do
  @stock_symbol = params[:stock_symbol].upcase
  
  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")

  if response["Data"].nil?
    @error = response["Message"]
    erb :index
  else
    @last_price = response["Data"]["LastPrice"]
    erb :results
  end
end