require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"
require "nokogiri"
require "open-uri"
require "httparty"

#get /stocks?symbol=goog
#=> 845.45

get "/" do
	erb :index
end


get "/stocks" do
	@stock_symbol = params[:stock_symbol]

	response = HTTParty.get("http://www.google.com/ig/api?stock=#{@stock_symbol}")

	@data = response["xml_api_reply"]["finance"]
	@price = response["xml_api_reply"]["finance"]["last"]["data"]

	erb :stocks

end

get "/apitest/:stock" do
	doc = Nokogiri::HTML(open('http://www.google.com/ig/api?stock=GOOG'))
	binding.pry
	@stock = params[:stock]
	google_results = test

end
