require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'erb'


get "/" do
  erb :index
end

get "/receipts/new" do
  @store_name = params[:store_name]
  @product_name = params[:product_name]
  @product_price = params[:product_price]

  erb :receipts
end


post "/receipts" do

  file = File.new("receipts.txt", "a+")

  file.each do |line|
    # this will return an array with a unique ID and 3 values
    values = line.split(",")
      puts "Store: #{values[0]}"
      puts "Product: #{values[1]}"
      puts "Price: #{values[2]}"
    end
      file.close
end