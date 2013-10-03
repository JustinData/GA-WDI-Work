require 'sinatra'
require 'sinatra/reloader'

# GET /
#=> User to be presented with "Welcome to our Stock.ly"

get "/" do
  erb :index
end

# GET /stocks?symbol=GOOG
#=> 845.45

get "/stocks" do
end



# # GET /stocks/GOOG

# get "/stocks/:stock_symbol"

# # GET /SteveMartin

# get "/:username" do
#   params[:username]
# end

# # GET /?username=SteveMartin

# get "/" do
#   params[:username]
# end