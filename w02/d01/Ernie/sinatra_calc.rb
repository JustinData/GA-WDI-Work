require 'Sinatra'
require 'pry'

get "/"do 
"Welcome My Awesome Calculator Web APP!"
end

calculator = {}

get "/calculator" do
   recent_calulations = calculator.values.join(", ")
  "These are your last registered calculations/n #{recent_calulations}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculator[id]

  if entry
    entry
  else
    "NONE FOUND!"
  end
end

post "/calculator/add" do

end

post "/calculator/subtract" do

end

post "/calculator/mutiply" do

end

post "/calculator/divide" do

end