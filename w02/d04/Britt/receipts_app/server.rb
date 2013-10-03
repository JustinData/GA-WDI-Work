require 'sinatra'
require 'sinatra/reloader'

# Receipts.io

# GET "/" => "Welcome to Receipts.io"
get "/" do
	erb :index
end

# GET "/receipts/new" => form for new receipts
# 	* inputs for store, product, price
get "/receipts/new" do
	erb :form
end

# POST "/receipts" => create a new receipt and save it as a CSV to receipts.txt (and assign it a unique id)
post "/receipts" do; end

# GET "/receipts" => print out all the generated receipts
get "/receipts" do; end

# GET "/receipts/:id" => show a particular receipt
get "receipts/:id" do; end