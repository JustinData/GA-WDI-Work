require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  erb :index
end

get "/receipts" do
  #prints out all the generated receipts
  #reads and prints from the receipts.txt file
end

get "/receipts/new" do
  # shows form so that people can enter information for receipts
    erb :form
# end
end

get "/receipts/:id" do
  # links param to id and prints just that one
end

post "/receipts/new" do
      file = File.new("receipts.txt", "a+")
      items = []
      params.values.each do |value|
        items << value
      end

      list_items = items.join(", ")

      file.puts list_items
      file.close

end