require 'sinatra'

calculations = {1 => "hey", 2 =>"sup"}

get "/" do
  "Welcome to the coolest calculator app evahhh!"
end

get "/calculator" do
    "print this"
end




=begin
get("/calculator/:id") do
  id = params[:id].to_i
  if calculations.keys.include?(id)
    "Calculation #{id} : calculations[id]"
  else
    "Sorry, that ID was not found. Try again."
  end
end
=end








