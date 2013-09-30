require "sinatra"

# get "/" do
#   name = "Ernie"
#   "Hello World! #{name}"
# end

# get"/memories/:enjoy_weber" do 
#   if params[:enjoy_weber] == "yes"
#    "Not a Sound in the Moonlight"
#   else
#     "NVM"
#   end
# end

#Create
#Read
#Update
#Destroy
#Guest Book Entries!

guest_book = {1 => "Ernie", 2 => "Peter"}

#GET:/guest_book url
#list of all people who have ever registered

#POST
#Create a new entry in the guest_book hash
#Each Entries should have a uniq ID

#{! => "Jeff", 2}

# index

get "/guest_book" do 
  names = guest_book.values.join(",")
"These people have registered #{names}"
end


#/guest_book/id
get "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[:id]
end

if entry
  entry
  else
    "None Found"
end

post "/guest_book" do
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]
end

# Expect params name -- new_name
put"/guest_book/:id" do
   id = params[:id].to_i
   guest_book[id] = params[:name]
end

delete "/guest_book/delete" do
  id = params[:id].to_i
  guest_book.delete
end



