require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require "httparty"

get "/" do
  @make = "/receipts/new"
  erb :index
end

get "/receipts/" do
  @make = "/receipts/new"
  erb :receipts
end


get "/receipts/new" do

  # @stock_symbol = params[:stock_symbol]
  # @random_string_from_user = params[:stuff]
  
  # response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")

  # @price = response["Data"]["LastPrice"]

  erb :receipts
end

# get "/receipts/:id" do

#   # @stock_symbol = params[:stock_symbol]
#   # @random_string_from_user = params[:stuff]
  
#   # response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")

#   # @price = response["Data"]["LastPrice"]

#   erb :receipts
# end

# post "/receipts" do

#   erb :receipts
# end







