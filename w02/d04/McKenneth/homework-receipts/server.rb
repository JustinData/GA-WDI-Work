require 'sinatra'
require 'sinatra/reloader'
i=1
#welcome screen
  get("/") do 
    erb :index
  end

#form for a new receipt
  get("/receipts/new") do 
    erb :receipt_make
  end

#creates new receipts
  post("/receipts") do
    @id = i
    @store = params[:store]
    @item = params[:item]
    @cost = params[:cost]
    input = []
    input <<@id
    input << @store
    input << @item 
    input << @cost
    file = File.new("views/receipts.txt", "a+")
    file.puts input.join(",")
    file.close
    i+=1
  end

#prints all receipts
  get("/receipts") do 
    # file = File.new("receipts.txt", "r")
    # file.each do |lines|
    #   each_one = lines.split(",")
    #   puts "Store: #{each_one[1]}"
    #   puts "Item: #{each_one[2]}"
    #   puts "Cost: #{each_one[3]}"
    #   puts
    # end
    # file.close
    erb :receipt_read

  end

#shows a particular receipt
  get("/receipts/:id") do 
    @id = params[:id]
    # file = File.new("receipts.txt", "r")
    # file.each do |lines|
    #   each_one = lines.split(",")
    #     if each_one[0] = @id
    #       puts "Store: #{each_one[1]}"
    #       puts "Item: #{each_one[2]}"
    #       puts "Cost: #{each_one[3]}"
    #       puts
    #     else
    #      puts "Sorry, that's not a receipt you input!"
    #     end
    # end
    # file.close
    erb :receipt_read
  end