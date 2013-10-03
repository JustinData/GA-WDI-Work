require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

#GET /
#=> User to be presented with "Welcom to our Stock.ly"

# GET / stocks?symbol=GOOG
# => 845.45

get "/" do
  erb :index
end

get "/stocks" do
  binding.pry
  @stock_symbol = params[:stock_symbol]
  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
  @price = response["Data"]["LastPrice"]
  erb :stocks
end


