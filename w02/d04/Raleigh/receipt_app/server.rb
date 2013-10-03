require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do 
   erb :index
end

get "/receipts/new" do 
   erb :make_receipt
end

post "/receipts" do

   file = File.new("receipts.txt", "a+")
   # binding.pry

   line_num = 1
   File.open("receipts.txt") {|n| line_num = n.read.count("\n")}

   entry = [line_num, params[:store],params[:item],params[:price]]
   file.puts entry.join(",")
   file.close

end

get "/receipts" do 
   file = File.new("receipts.txt", "r")

   file.each do |line|
      entry = line.split(",")
      @past_receipt = "\nStore: #{entry[1]}\nItem: #{entry[2]}\nPrice: $#{entry[3]}"
   end

   file.close

   erb :read_receipt
end
