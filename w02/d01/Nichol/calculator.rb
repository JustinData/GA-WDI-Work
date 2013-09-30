require 'sinatra'
require 'pry'


calculation_history = Array.new

calculation_history << "you added 4 to 7 and got 11"
calculation_history << "you added 4 to 7 and got 11"

get "/" do
	"<h1>Welcome To Calulator - Sinatra Style</h1>"
end

get "/calculator" do
	calculation_history.each do |x|
		"x" + "\n"
	end
end

get "/calculator/:id" do
 	#see 3rd calculation in past or if not available, Id wasn't found
 	if params[:id].to_i < calculation_history.size then
 		"id not found"
 	else 
 		calculation_history[params[:id.to_i]]
 	end
end

# post "calculator/add" do 
# 	#2 numbers will be in body of request
# end

# post "calculator/subtract" do

# end

# post "calculator/multiply" do
# end

# post "calculator/divide" do
# end





