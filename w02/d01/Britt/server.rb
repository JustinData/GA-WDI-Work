require 'sinatra'

get "/" do
	"Welcome to Britt's Sinatra Calculator"
end

# hash for all historical calculations
calc_history = {}

get "/calculator" do
	calc_history.keys.each do
		# something that works to show all calculations
	end
end

get "/calculator/:id" do
	id = params[:id].to_i
	entry = calc_history[id]

	if entry
		entry
	else
		"No calculation with that id found."
	end
end