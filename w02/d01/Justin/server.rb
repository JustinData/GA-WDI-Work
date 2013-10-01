require "sinatra"

get "/" do
	"Hello World!"
end

get "/memories/:enjoy_weber" do
	if params[:enjoy_weber] == "yes"
		"NOT A SOUND IN THE MOONLIGHT!"
	else
		"Nvm"
	end
end

#
#
#
#

#


guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter"}

# GET /guest_book
# LIst of all people who have ever registered

# POST /guist_book
# Createa a new entry in the guest_book
# Each entry should have a unique ID

get "/guest_book" do
	names = guest_book.values.join(", ")
	"The following have register: #{names}" 
end

# Show (just one entry)
# I know the ke (or the ID)

get "/guest_book/:id" do
	id = params[:id].to_i
	guest_book[id]

	if entry
		entry
	else
		"NONE FOUND SILLY!"
	end
end

post "/guest_book" do
	last_id = guest_book.keys.max 
	guest_book[last_id + 1] = params[:name]
end

# Expect params[:name] == new_name
put "/guest_book/:id" do
	id = param[:id].to_i
	guest_book[id] = params[:name]
end

delete "/guest_book/:id" do
	id = param[:id].to_i]
	guest_book.delete(id)
end