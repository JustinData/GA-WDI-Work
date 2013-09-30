require 'sinatra'

get "/" do
	"Welcome to Britt's Sinatra Calculator"
end

# hash for all historical calculations
calc_history = {}

get "/calculator" do
	calc_history.keys.each do |id,calculation|
		# something that works to show all calculations
		"#{id}. #{calculation}\n"
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

post "/calculator/add/:num_1/:num_2" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	calc_history[last_id + 1] = "#{num_1} + #{num_2} = #{num_1 + num_2}"
end

post "calculator/subtract/:num_1/:num_2" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	calc_history[last_id + 1] = "#{num_1} - #{num_2} = #{num_1 - num_2}"
end

post "calculator/multiply/:num_1/:num_2" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	calc_history[last_id + 1] = "#{num_1} * #{num_2} = #{num_1 * num_2}"
end

post "calculator/divide/:num_1/:num_2" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	calc_history[last_id + 1] = "#{num_1} / #{num_2} = #{num_1 / num_2}"
end





