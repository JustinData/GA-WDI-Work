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
 	calculation_number = param[:id].to_i
 	if calculation_number < calculation_history.size then
 		calculation_history[params[:id.to_i]]
 	else 
 		"no such id"
 	end
end

post "/calculator/add" do
 	#2 numbers will be in body of request
 	binding.pry
 	"you're adding two numbers!"
 	num1 = params[:num1].to_i
 	num2 = params[:num2].to_i
 	result = num1 + num2
 	calculation_history << "you added #{num1} to #{num2} and got #{result}"

end

# post "/calculator/subtract" do

# end

# post "/calculator/multiply" do
# end

# post "/calculator/divide" do
# end





