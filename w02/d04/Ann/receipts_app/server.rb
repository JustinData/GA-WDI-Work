# WEB APP = Receipts.io 

# GET "/" => "Welcome to Receipt.io"
# GET "/receipts/new" => form for new receipts 
#  - inputs for store, product, and price
#  POST "/receipts" => create a new receipt and save it as a CSV to receipts.txt (and assign it a unique id)
#  GET "/receipts" => print out all the generated receipts 
#  Get "/receipts/:id" => show a particular receipt 

#  Your CSV should look liek this: 
#  1, best buy, 1cd tv, 400.23 
#  2, target,book shelf, 69.95
#  etc.... 

require 'sinatra'
require 'sinatra/reloader'

get ("/") do
  @new_receipt_link = "/receipts/new"
   erb :index 
end

get ("/receipts/new") do
  erb :form 
end

post ("/receipts") do 
  store = params[:store]
  product = params[:product]
  price = params[:price]
   
  a = [store, product, price]

  file = File.new("receipt.txt", "a+")

    i = 0 
    file.each do |line|
      i+=1
    end  

  a.unshift(i +1) 

  total_receipt = a.join(",") 

  file.puts total_receipt

  file.close 

  redirect to("/receipts") 

end 

get ("/receipts") do 

    file = File.new("receipt.txt", "r")

    file.each do |line|
       receipt_collection = line.split(",")
       @full_receipt = "ID Number: #{receipt_collection[0]}, Store: #{receipt_collection[1]}, Product: #{receipt_collection[2]}, Price: #{receipt_collection[3]}"
    end 
    
    erb :full_receipt

end  

# get ("/receipts/:id") do 
#    param[:id] =  
#     total_receipt_hash = Hash.new{ |k,v| k[v] = {:id => v, :primary => '', :secondary => ''} 
# end 

 
